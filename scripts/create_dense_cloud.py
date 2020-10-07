#!/usr/bin/env python
"""
Constructs and exports dense point cloud from raw images,
using the Metashape API.

Usage: 
./metashape.sh -platform offscreen -r create_dense_cloud.py
or create an alias:
alias densecloud="~/path_to_metashape-pro/metashape.sh -platform offscreen \
                                                       -r ~/protocols/scripts/create_dense_cloud.py"
"""
import Metashape
import argparse
import os
import re
import sys
import time
import math
import json

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2020 Pim Bongaerts'
__license__ = 'GPL'

CAMERA_EXTENSION = 'CR2'
CAMERA_POSTFIX = '.raw'
UPDATE_INTERVAL = 300       # in seconds (= 5min)

start_time = 0

def get_cameras(extension_cameras):
    """ Get the paths for each camera """
    camera_path = '{0}/{1}{2}'.format(os.getcwd(), os.path.basename(os.getcwd()), CAMERA_POSTFIX)
    camera_list = []
    for filename in os.listdir(camera_path):
        if filename.endswith('.' + extension_cameras):
            filepath = os.path.join(camera_path, filename)
            camera_list.append(filepath)
    return camera_list

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

def main(extension_cameras, aligned_camera_threshold):

    global start_time
    project_filepath = get_project_filepath()
    log_filename = project_filepath.replace('.psx', '.log')
    log_file = open(log_filename, 'w')
    start_time = time.time()

    doc = Metashape.app.document
    
    if os.path.isfile(project_filepath):
        doc.open(project_filepath)  # Open exisiting project
    else:
        doc.save(project_filepath)  # Create new project

    if doc.chunk:
        chunk = doc.addChunk        # Add chunk if it does not already exists
    else:
        chunk = doc.chunk

    if len(doc.chunk.cameras) == 0:
        chunk.addPhotos(get_cameras(extension_cameras))
        doc.save()

    aligned_cameras, non_aligned_cameras = get_aligned_and_non_aligned_cameras(chunk)

    if len(aligned_cameras) == 0:
        start_next_step("Match photos", log_file)
        chunk.matchPhotos(downscale = 1,                    # Image alignment accuracy = High
                          generic_preselection = True,      # Enable generic preselection
                          reference_preselection = False,   # Disable reference preselection
                          filter_mask = False,              # Disable filtering points by mask
                          mask_tiepoints = False,           # Disable applying mask filter to tie points
                          keypoint_limit = 5000,            
                          tiepoint_limit = 0,
                          keep_keypoints = False,           # Do not store keypoints in the project
                          guided_matching = False,          # Disable guided image matching
                          reset_matches = True,             # Resent current matches
                          progress = progress_print)             

        doc.save()
        
        start_time = time.time()
        start_next_step("Align photos", log_file)
        chunk.alignCameras(adaptive_fitting = True,         # Enable adaptive fitting of distortion coefficients
                           reset_alignment = True,          # Reset current alignment
                           progress = progress_print)
        doc.save()
        start_time = time.time()

        aligned_cameras, non_aligned_cameras = get_aligned_and_non_aligned_cameras(chunk)

    if (len(aligned_cameras) / len(chunk.cameras)) < aligned_camera_threshold:
        sys.exit('Unsufficient cameras aligned: {0} aligned out of {1}'.format(len(aligned_cameras),
                                                                            len(chunk.cameras)))

    start_next_step("Build dense maps", log_file)
    chunk.buildDepthMaps(downscale = 2,                 # Depth map quality = High (2)
                         filter_mode = Metashape.MildFiltering,
                         reuse_depth = False,           # Disable reuse depth maps option
                         progress = progress_print)

    doc.save()
    start_time = time.time()
    
    start_next_step("Build dense maps", log_file)
    chunk.buildDenseCloud(point_colors = True,          # Enable point colors calculation
                          point_confidence = True,      # Enable point confidence calculation
                          keep_depth = True,            # Enable store depth maps option
                          progress = progress_print)

    doc.save()
    start_time = time.time()
    
    start_next_step("Export points to PLY file", log_file)
    chunk.exportPoints(path = project_filepath.replace('.psx', '.ply'),
                       source_data = Metashape.DenseCloudData,
                       binary = True, 
                       save_normals = True, 
                       save_colors = True, 
                       save_classes = False,
                       save_confidence = True,
                       raster_transform = Metashape.RasterTransformNone,
                       colors_rgb_8bit = True,
                       format = Metashape.PointsFormatPLY,
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
    parser.add_argument('-e', '--extension_cameras', dest='extension_cameras',
                        metavar='extension_cameras', default='CR2',
                        help='extension of camera files (default CR2)')
    parser.add_argument('-a', '--aligned_camera_threshold', dest='aligned_camera_threshold',
                        metavar='aligned_camera_threshold', default=0.8, type=float,
                        help='minimum threshold of aligned cameras (default 0.8)')
    args = parser.parse_args()
    main(args.extension_cameras, args.aligned_camera_threshold)
