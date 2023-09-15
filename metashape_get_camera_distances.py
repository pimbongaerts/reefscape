#!/usr/bin/env python
"""
BEAM ANGLE NOT CURRENTLY WORKING

"""

import Metashape
import argparse
import numpy as np
import math
import os
import sys

def open_metashape_project(metashape_project_path):
	# Enable all GPUs
	Metashape.app.gpu_mask = 2 ** (len(Metashape.app.enumGPUDevices())) - 1
	# Open project
	doc = Metashape.Document()
	if os.path.isfile(metashape_project_path):
		doc.open(metashape_project_path)
	else:
		sys.exit("Could not access {0}".format(metashape_project_path))
	return doc

def main(metashape_project_path, scaling_factor, beam_angle):

	# Open metashape project and select primary chunk
	doc = open_metashape_project(metashape_project_path)
	chunk = doc.chunk

	points = chunk.tie_points.points
	projections = chunk.tie_points.projections
	npoints = len(points)

	camdists_filepath = metashape_project_path.replace('.psx', '_camdists.csv')
	camdists_file = open(camdists_filepath, 'w')
	print('Outputting {}...'.format(camdists_filepath))
	camdists_file.write('label,datetime,dist_mean,dist_std,dist_points,scaling_factor\n')

	for camera in chunk.cameras:
		cam_datetime = camera.photo.meta["Exif/DateTimeOriginal"]
		if camera.center:
			point_index = 0
			distances = []
			for proj in projections[camera]:
				track_id = proj.track_id
				while point_index < npoints and points[point_index].track_id < track_id:
					point_index += 1
				if point_index < npoints and points[point_index].track_id == track_id:
					if not points[point_index].valid:
						continue    
					else:
						# TODO: NOT CURRENTLY WORKING
						if beam_angle:
							v1 = camera.transform.mulp(camera.sensor.calibration.unproject(Metashape.Vector([camera.sensor.width/2, camera.sensor.height/2]))) - camera.center
							v2 = points[point_index].coord[0:3] - camera.center
							angle=np.arccos(np.dot(v1,v2)/(np.linalg.norm(v1)*np.linalg.norm(v2)))
							print(v1, v2, angle)
							if angle <= (int(beam_angle) / 2):
								continue
						distance = math.dist(points[point_index].coord[0:3], camera.center) * float(scaling_factor)
						distances.append(distance)
			camdists_file.write('{0},{1},{2},{3},{4},{5}\n'.format(camera.label, cam_datetime, np.mean(distances), np.std(distances), len(distances), scaling_factor))
		else:
			camdists_file.write('{0},{1},NA,NA,NA,NA\n'.format(camera.label, cam_datetime))
	camdists_file.close()

if __name__ == '__main__':
	parser = argparse.ArgumentParser(description=__doc__)
	parser.add_argument('metashape_project_path', metavar='metashape_project_path',
						help='metashape_project_path')
	parser.add_argument('--scaling_factor', '-f', type=float, default=1.0, 
		help='Scaling factor to convert distance to metres (default = 1.0)')
	parser.add_argument('-b', '--beam_angle', dest='beam_angle',
						metavar='beam_angle',
						help='optional beam angle filter to only consider '
							 'points that fall within virtual sonar beam'
							 '(e.g. ~30 degrees for BR Ping1D)')
	args = parser.parse_args()
	main(args.metashape_project_path, args.scaling_factor, args.beam_angle)