#!/usr/bin/env python
"""

Note: no whitespace allowed in coordinate labels
"""

import Metashape
import argparse
import math
import numpy
import os
import shutil
import subprocess
from datetime import datetime

BASEPATH = '/mnt/coral3d/focal_plots'
IDQUERIESPATH = '/mnt/coral3d/id_queries'
GDRIVEPATH = 'orthos:/focal_plots/id_queries'
CAM_WIDTH = 8734
CAM_HEIGHT = 5856

def get_project_path(model_id):
  """ Retrieve current path and use directory name as project name """
  """ ~/plots/seaquarium_40m_2020mar --> ~/plots/seaquarium_40m_2020mar/seaquarium_40m_2020mar.psx """
  return '{0}/{1}/{2}/{3}'.format(BASEPATH, model_id[0:7], model_id[0:11], model_id)

def get_distance_from_camera_center(x, y):
    """ Calculates distance between point and camera center """
    return math.sqrt(abs((CAM_WIDTH / 2) - x) ** 2 + abs((CAM_HEIGHT / 2) - y) ** 2)

def get_annotations_from_file(annotations_filename):
    annotations = []
    annotations_file = open(annotations_filename, 'r')
    line_id = 1
    for line in annotations_file:
        cols = line.replace(',', ' ').replace('/', '_').split()
        annotations.append([line_id, cols[0], Metashape.Vector((float(cols[1]), float(cols[2]), float(cols[3])))])
        line_id += 1
    annotations_file.close()
    return annotations

def main(model_id, annotations_filename, max_cameras):

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

    annotations = get_annotations_from_file(annotations_filename)

    # Create output folder
    output_folder = '{0}/{1}_{2}'.format(IDQUERIESPATH, datetime.now().strftime("%Y%m%d_%H%M%S"), model_id)
    try:
        os.mkdir(output_folder)
    except OSError:
        sys.exit('Could not create folder: {}'.format(output_folder))

    for annotation in annotations:
        annotation_id = annotation[0]
        annotation_label = annotation[1]
        annotation_vector = annotation[2]
        marker = chunk.addMarker(T.inv().mulp(annotation_vector))
        projections = marker.projections.items()
        camera_projs = []
        for proj in projections:
            camera = proj[0]
            camera_coords = proj[1]
            dist = get_distance_from_camera_center(camera_coords.coord.x, camera_coords.coord.y)
            camera_projs.append([dist, annotation_id, annotation_label, annotation_vector[0], annotation_vector[1], annotation_vector[2], camera.photo.path, camera_coords.coord.x, camera_coords.coord.y])
        if len(camera_projs) == 0:
            sys.exit('Error - no cameras found: {0} {1} {2} {3}'.format(annotation_label, annotation_vector[0], annotation_vector[1], annotation_vector[2]))
        else:
            # Sort by distance (sorted sorts lists of lists by first element)
            for camera_proj in sorted(camera_projs)[:int(max_cameras)]:
                print('{0},{1}'.format(', '.join([str(x) for x in camera_proj[1:]]), str(camera_proj[0])))
                annotation_output_folder = '{0}/{1}_{2}'.format(output_folder, camera_proj[1], camera_proj[2])
                if not os.path.exists(annotation_output_folder):
                    try:
                        os.mkdir(annotation_output_folder)
                    except OSError:
                        sys.exit('Could not create folder: {}'.format(annotation_output_folder))
                #shutil.copy(camera_proj[6], annotation_output_folder)
                #process = subprocess.call('/usr/bin/rclone copy "{0}" {1}'.format(output_folder, gdrive_output_folder))
                process = subprocess.Popen('ffmpeg', shell=True)
                process.wait()
            chunk.remove(marker)

    # Copy over whole folder to Google Drive
    print("Copying over to shared Google Drive folder")
    gdrive_output_folder = output_folder.replace(IDQUERIESPATH, GDRIVEPATH)
    print('/usr/bin/rclone mkdir {0}'.format(gdrive_output_folder))
    print('/usr/bin/rclone copy "{0}" {1}'.format(output_folder, gdrive_output_folder))

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('model_id', metavar='model_id',
                        help='ID of model (e.g. cur_kal_60m_20201214')
    parser.add_argument('annotations_filename', metavar='annotations_filename',
                        help='Text file with 4 columns: label, x, y, z')
    parser.add_argument('max_cameras', metavar='max_cameras',
                        help='maximum number of cameras to retrieve for each coordinate')
    args = parser.parse_args()
    main(args.model_id, args.annotations_filename, args.max_cameras)
