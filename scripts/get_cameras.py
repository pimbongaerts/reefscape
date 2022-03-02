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
ANN_SQ_SIZE = 20
CROP_SIZE = 1000
NO_IMG_PATH = '/home/deepcat/reefscape/no_img.jpg'

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
    output_id = '{0}_{1}'.format(datetime.now().strftime("%Y%m%d_%H%M%S"), model_id)
    output_folder = '{0}/{1}'.format(IDQUERIESPATH, output_id)
    try:
        os.mkdir(output_folder)
    except OSError:
        sys.exit('Could not create folder: {}'.format(output_folder))

    for annotation in annotations:
        annotation_id = '{:03d}'.format(annotation[0])
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
            # Output dummy image if no cameras found (e.g. outside plot)
            img_text = 'no images! {0}_{1} x {2} y {3} z'.format(annotation_id, annotation_label, annotation_vector[0], annotation_vector[1], annotation_vector[2])
            output_file = '{0}/{1}_{2}_noimg'.format(output_folder, annotation_id, annotation_label)

            ffmpeg_cmd = 'ffmpeg -i {0} -hide_banner -loglevel error -vf "scale={1}:{1},drawtext=fontfile=/Library/Fonts/Arial.ttf: text=\'{2}\': x=50: y=h-(2*lh): fontcolor=black: fontsize=20: box=1: boxcolor=gray: boxborderw=5" {3}'.format(NO_IMG_PATH, CROP_SIZE, img_text, output_file)
            process = subprocess.Popen(ffmpeg_cmd, shell=True)
            process.wait()
            #sys.exit('Error - no cameras found: {0} {1} {2} {3}'.format(annotation_label, annotation_vector[0], annotation_vector[1], annotation_vector[2]))
        else:
            # Sort by distance (sorted sorts lists of lists by first element)
            for camera_proj in sorted(camera_projs)[:int(max_cameras)]:
                print('{0},{1}'.format(', '.join([str(x) for x in camera_proj[1:]]), str(camera_proj[0])))
                box_x = max(int(camera_proj[7]) - (ANN_SQ_SIZE / 2), 0)
                box_y = max(int(camera_proj[8]) - (ANN_SQ_SIZE / 2), 0)
                crop_x = max(int(camera_proj[7]) - (CROP_SIZE / 2), 0)
                crop_y = max(int(camera_proj[8]) - (CROP_SIZE / 2), 0)
                img_text = 'lab {0}_{1} x {2} y {3} z {4} orig {5}'.format(camera_proj[1], camera_proj[2], camera_proj[3], camera_proj[4], camera_proj[5], os.path.basename(camera_proj[6]))
                output_file = '{0}/{1}_{2}_{3}'.format(output_folder, camera_proj[1], camera_proj[2], os.path.basename(camera_proj[6]))

                ffmpeg_cmd = 'ffmpeg -i {0} -hide_banner -loglevel panic -vf "drawbox={1}:{2}:{3}:{3}:color=red@0.5:t=fill,crop={4}:{4}:{5}:{6},drawtext=fontfile=/Library/Fonts/Arial.ttf: text=\'{7}\': x=50: y=h-(2*lh): fontcolor=black: fontsize=20: box=1: boxcolor=gray: boxborderw=5" {8}'.format(camera_proj[6], box_x , box_y, 
                                                                   ANN_SQ_SIZE, CROP_SIZE,crop_x, crop_y, img_text, output_file)
                process = subprocess.Popen(ffmpeg_cmd, shell=True)
                process.wait()
            chunk.remove(marker)

    # Create movie from images
    ffmpeg_cmd = 'ffmpeg -framerate 5 -hide_banner -loglevel error -pattern_type glob -i "{0}/*.jpg" -pix_fmt yuv420p {1}/{2}.mp4'.format(output_folder, IDQUERIESPATH, output_id)
    process = subprocess.Popen(ffmpeg_cmd, shell=True)
    process.wait()

    # Copy over whole folder to Google Drive
    rclone_cmd = '/usr/bin/rclone copy {0}/{1}.mp4 {2}'.format(IDQUERIESPATH, output_id, GDRIVEPATH)
    print(rclone_cmd)
    process = subprocess.Popen(rclone_cmd, shell=True)
    process.wait()

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
