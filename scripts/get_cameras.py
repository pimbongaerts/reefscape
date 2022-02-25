#!/usr/bin/env python
"""

Note: no whitespace allowed in coordinate labels
"""

import Metashape
import argparse
import math
import numpy

BASEPATH = "/mnt/coral3d/focal_plots"
CAM_WIDTH = 8734
CAM_HEIGHT = 5856

def get_project_path(model_id):
  """ Retrieve current path and use directory name as project name """
  """ ~/plots/seaquarium_40m_2020mar --> ~/plots/seaquarium_40m_2020mar/seaquarium_40m_2020mar.psx """
  return '{0}/{1}/{2}/{3}'.format(BASEPATH, model_id[0:7], model_id[0:11], model_id)

def get_distance_from_camera_center(x, y):
    """ Calculates distance between point and camera center """
    return math.sqrt(abs((CAM_WIDTH / 2) - x) ** 2 + abs((CAM_HEIGHT / 2) - y) ** 2)

def get_vectors_from_file(coordinates_filename):
    vectors = {}
    coordinates_file = open(coordinates_filename, 'r')
    for line in coordinates_file:
        cols = line.replace(',', ' ').split()
        vectors[cols[0]] = Metashape.Vector((float(cols[1]), float(cols[2]), float(cols[3])))
    coordinates_file.close()
    return vectors

def main(model_id, coordinates_filename, max_cameras):

    Metashape.app.gpu_mask = 2 ** (len(Metashape.app.enumGPUDevices())) - 1 # Enable all GPUs

    project_path = get_project_path(model_id)
    project_filepath = '{0}/{1}.psx'.format(project_path, model_id)

    doc = Metashape.Document()
    if os.path.isfile(project_filepath):
        doc.open(project_filepath)  # Open exisiting project
    else:
        sys.exit("Could not access {0}".format(project_filepath))
    
    chunk = doc.chunk
    T = chunk.transform.matrix

    vectors = get_vectors_from_file(coordinates_filename)
    for vector_label in vectors:
        vector = vectors[vector_label]
        marker = chunk.addMarker(T.inv().mulp(vector))
        projections = marker.projections.items()
        camera_projs = []
        for proj in projections:
            camera = proj[0]
            camera_coords = proj[1]
            dist = get_distance_from_camera_center(camera_coords.coord.x, camera_coords.coord.y)
            camera_projs.append([dist, vector_label, vector[0], vector[1], vector[2], camera.photo.path, camera_coords.coord.x, camera_coords.coord.y])
        # Sort by distance (sorted sorts lists of lists by first element)
        for camera_proj in sorted(camera_projs)[:int(max_cameras)]:
            print(camera_proj)
        chunk.remove(marker)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('model_id', metavar='model_id',
                        help='ID of model (e.g. cur_kal_60m_20201214')
    parser.add_argument('coordinates_filename', metavar='coordinates_filename',
                        help='Text file with 4 columns: label, x, y, z')
    parser.add_argument('max_cameras', metavar='max_cameras',
                        help='maximum number of cameras to retrieve for each coordinate')
    args = parser.parse_args()
    main(args.model_id, args.coordinates_filename, args.max_cameras)
