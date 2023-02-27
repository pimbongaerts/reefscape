#!/usr/bin/env python
"""
Constructs and exports dense point cloud from raw images,
using the Metashape 2.0 API.

Usage: 
./metashape.sh -platform offscreen -r create_dense_cloud.py
or create an alias:
alias densecloud="~/path_to_metashape-pro/metashape.sh -platform offscreen \
                                                       -r ~/protocols/scripts/create_dense_cloud.py"


#TODO: Open/Close log file
"""
import Metashape
import argparse
import os
import re
import sys
import time
import math
import json
import subprocess

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2020 Pim Bongaerts'
__license__ = 'GPL'

RAW_EXTENSION = 'CR2'
RAW_FOLDER_POSTFIX = '.raw'
PHOTO_FOLDER_POSTFIX = '.photos'
MIN_PHOTOS = 200
UPDATE_INTERVAL = 300       # in seconds (= 5min)

start_time = 0

def output_camera_metadata(meta_filepath, chunk):
  """ Export camera metadata for Viscore (from extract_meta.py script) """
  meta_file = open(meta_filepath, 'w')
  outputs = {}

  for cam in chunk.cameras:
      center = cam.center
      if center is not None:
          geo = chunk.transform.matrix.mulp(center)
          if chunk.crs is not None:
              lla = list(chunk.crs.project(geo))
          center = list(center)
      
      agi_trans = cam.transform
      trans = None
      if agi_trans is not None:
          trans = [list(agi_trans.row(n)) for n in range(agi_trans.size[1])]
      
      outputs[cam.key] = {'path' : cam.photo.path, 'center' : center, 'transform' : trans}
  meta_file.write(json.dumps({'cameras' : outputs}, indent = 4))
  meta_file.close()

def get_aligned_and_non_aligned_cameras(chunk):
    aligned_cameras = []
    non_aligned_cameras = []
    for camera in chunk.cameras:
        if not camera.transform:
            non_aligned_cameras.append(camera)
        else:
            aligned_cameras.append(camera)
    return(aligned_cameras, non_aligned_cameras)

def progress_print(p):
    """ Print progress """
    elapsed = float(time.time() - start_time)
    if p:
        if p.is_integer():
            secs = elapsed / p * 100
            time_left = time.strftime("%Hh %Mm% %Ss", time.gmtime(secs))
            print('Current task progress: {:.0f}%, estimated time left: {}'.format(p, time_left))
    else:
        print('Current task progress: {:.2f}%, estimated time left: unknown'.format(p)) #if 0% progress

def get_project_filepath():
  """ Retrieve current path and use directory name as project name """
  """ ~/plots/seaquarium_40m_2020mar --> ~/plots/seaquarium_40m_2020mar/seaquarium_40m_2020mar.psx """
  return '{0}/{1}.psx'.format(os.getcwd(), os.path.basename(os.getcwd()))

def start_next_step(message, log_file):
  """ Write update to logfile """
  formatted_message = "[{0}] {1}\n".format(time.asctime(time.localtime()), message)
  print(formatted_message)
  log_file.write(formatted_message)

def main():

    global start_time
    start_time = time.time()

    project_filepath = get_project_filepath()
    log_file = open(project_filepath.replace('.psx', '.log'), 'w')

    # Enable all GPUs
    Metashape.app.gpu_mask = 2 ** (len(Metashape.app.enumGPUDevices())) - 1

    doc = Metashape.Document()
    if os.path.isfile(project_filepath):
        doc.open(project_filepath, read_only=True)  # Open project as read-only
        doc.read_only = False                       # Turn off read-only in case it applies
        doc = Metashape.Document()
        doc.open(project_filepath, read_only=False) # Open project with writing access
    else:
        sys.exit('Project does not exist')

    if not doc.chunk:
        sys.exit('No chunk in project')
    else:
        chunk = doc.chunk
    
    start_next_step("Export points to PLY file", log_file)
    chunk.exportPointCloud(path = project_filepath.replace('.psx', '.ply'),
                       source_data = Metashape.PointCloudData,
                       binary = True, 
                       save_normals = True, 
                       save_colors = True, 
                       save_classes = False,
                       save_confidence = True,
                       raster_transform = Metashape.RasterTransformNone,
                       colors_rgb_8bit = True,
                       format = Metashape.PointCloudFormatPLY,
                       split_in_blocks = False,
                       progress = progress_print)
    
    start_next_step("Export cameras positions", log_file)
    chunk.exportCameras(project_filepath.replace('.psx', '.cams.xml'))

    start_next_step("Export camera metadata", log_file)
    output_camera_metadata(project_filepath.replace('.psx', '.meta.json'), 
                           chunk)

    doc.save()
    start_time = time.time()

    log_file.close()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    args = parser.parse_args()
    main()
