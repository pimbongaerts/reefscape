#!/usr/bin/env python
"""

Note: no whitespace allowed in coordinate labels
"""

import Metashape
import argparse

BASEPATH = "/mnt/coral3d/focal_plots"

def get_project_path(model_id):
  """ Retrieve current path and use directory name as project name """
  """ ~/plots/seaquarium_40m_2020mar --> ~/plots/seaquarium_40m_2020mar/seaquarium_40m_2020mar.psx """
  return '{0}/{1}/{2}/{3}'.format(BASEPATH, model_id[0:7], model_id[0:11], model_id)

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
    project_filepath = '{0}/{1}.psx'.format(project_path)

    doc = Metashape.Document()
    if os.path.isfile(project_filepath):
        doc.open(project_filepath)  # Open exisiting project
    else:
        sys.exit("Could not access {0}".format(project_filepath))
    
    chunk = doc.chunk
    T = chunk.transform.matrix

    vectors = get_vectors_from_file(coordinates_filename)
    for vector in vectors:
        cameras = []
        marker = chunk.addMarker(T.inv().mulp(vector))
        projections = marker.projections.items()
        for proj in projections:
            camera = proj[0]
            vector = proj[1]
            print([camera.photo.path, vector.coord.x, vector.coord.y])
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
