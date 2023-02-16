#!/usr/bin/env python
"""


"""

import Metashape
import reefscape
import argparse
import numpy as np
import math

def open_metashape_project(psx_filepath):
    """ """
    doc = Metashape.Document()
    if os.path.isfile(psx_filepath):
        doc.open(psx_filepath)  # Open exisiting project
        return doc
    else:
        sys.exit("Could not access {0}".format(psx_filepath))

def main(ref_timepoint_id, timepoint_id):

    Metashape.app.gpu_mask = 2 ** (len(Metashape.app.enumGPUDevices())) - 1 # Enable all GPUs
    plot = reefscape.Plot(ref_timepoint_id)

    timepoint_ids = []
    if timepoint_id:
        timepoint_ids.append(timepoint_id)
    else:
        timepoint_ids = sorted(plot.timepoints.keys())

    for timepoint_id in timepoint_ids:
        timepoint = plot.timepoints[timepoint_id]
        doc = open_metashape_project(timepoint.psx_filepath)
        chunk = doc.chunk

        point_cloud = chunk.point_cloud
        points = point_cloud.points
        projections = point_cloud.projections
        npoints = len(points)


        camdists_filepath = '{0}{1}_camdists.csv'.format(timepoint.path, timepoint.id)
        print('Outputting {}...'.format(camdists_filepath))
        camdists_file = open(camdists_filepath, 'w')
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
                            distance = math.dist(points[point_index].coord[0:3], camera.center) * float(timepoint.scale)
                            distances.append(distance)
                camdists_file.write('{0},{1},{2},{3},{4},{5}\n'.format(camera.label, cam_datetime, np.mean(distances), np.std(distances), len(distances), timepoint.scale))
            else:
                camdists_file.write('{0},{1},NA,NA,NA,NA\n'.format(camera.label, cam_datetime))
        camdists_file.close()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('ref_timepoint_id', metavar='ref_timepoint_id',
                        help='ref_timepoint_id')
    parser.add_argument('-t', '--timepoint_id', dest='timepoint_id',
                        metavar='timepoint_id',
                        help='optional single timepoint')
    args = parser.parse_args()
    main(args.ref_timepoint_id, args.timepoint_id)