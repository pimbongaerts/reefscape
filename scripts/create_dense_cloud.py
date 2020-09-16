#!/usr/bin/env python
"""
./metashape.sh -r create_dense_cloud.py [project_name] [camera_path]
~/tools/metashape-pro/metashape.sh -r ~/protocols/scripts/create_dense_cloud.py ~/mounts/coral3d/Seaquarium/test/test_project2.psx ~/mounts/coral3d/Seaquarium/test/test.raw

"""
import Metashape
import argparse
import os
import re
import sys
import time

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2020 Pim Bongaerts'
__license__ = 'GPL'

CAMERA_EXTENSION = 'CR2'
CAMERA_POSTFIX = '.raw'
UPDATE_INTERVAL = 300   # in seconds (= 5min)

def get_cameras():
    """ Get the paths for each camera """
    camera_path = '{0}/{1}{2}'.format(os.getcwd(), os.path.basename(os.getcwd()), CAMERA_POSTFIX)
    camera_list = []
    for filename in os.listdir(camera_path):
        if filename.endswith('.' + CAMERA_EXTENSION):
            filepath = os.path.join(camera_path, filename)
            camera_list.append(filepath)
    return camera_list

# def output_cameras():
#   """ Export camera and metadata - from extract_meta.py script (100islands) """
#   cams_filename = proj_dir + '/' + proj_name + '.cams.xml'
#   chunk.exportCameras(cams_filename)
  
#   meta_filename = proj_dir + '/' + proj_name + '.meta.json'

#   meta_file = open(meta_filename, 'w')
  

#   outputs = {}

#   for cam in cams:
#       key = cam.key
#       path = cam.photo.path
#       center = cam.center
#       if center is not None:
#           geo = chunk.transform.matrix.mulp(center)
#           if chunk.crs is not None:
#               lla = list(chunk.crs.project(geo))
#           center = list(center)
      
#       agi_trans = cam.transform
#       trans = None
#       if agi_trans is not None:
#           trans = [list(agi_trans.row(n)) for n in range(agi_trans.size[1])]
      
#       outputs[key] = {'path' : path, 'center' : center, 'transform' : trans}
      
    
#   print(outputs)
#   meta_file.write(json.dumps({'cameras' : outputs}, indent=4))

#   meta_file.close()

def progress_print(p):
    """ Print progress """
    elapsed = float(time.time() - start_time)
    if p:
        if p.is_integer() or last_update_time - time.time() > UPDATE_INTERVAL:
            secs = elapsed / p * 100
            time_left = time.strftime("%Hh %Mm% %Ss", time.gmtime(secs))
            print('Current task progress: {:.0f}%, estimated time left: {}'.format(p, time_left))
            last_update_time = time.time()
    else:
        print('Current task progress: {:.2f}%, estimated time left: unknown'.format(p)) #if 0% progress

def get_project_filepath():
  """ Retrieve current path and use directory name as project name """
  """ ~/plots/seaquarium_40m_2020mar --> ~/plots/seaquarium_40m_2020mar/seaquarium_40m_2020mar.psx """
  return '{0}/{1}.psx'.format(os.getcwd(), os.path.basename(os.getcwd()))

def main():

    doc = Metashape.app.document
    project_filepath = get_project_filepath()
    doc.save(project_filepath)

    chunk = doc.addChunk()
    chunk.addPhotos(get_cameras())
    doc.save()

    global start_time
    global last_update_time
    start_time = time.time()
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
    chunk.alignCameras(adaptive_fitting = True,         # Enable adaptive fitting of distortion coefficients
                       reset_alignment = True,          # Reset current alignment
                       progress = progress_print)          
    doc.save()

    start_time = time.time()
    chunk.buildDepthMaps(downscale = 2,                 # Depth map quality = High (2)
                         filter_mode = Metashape.MildFiltering,
                         reuse_depth = False,           # Disable reuse depth maps option
                         progress = progress_print)
    doc.save()

    start_time = time.time()
    chunk.buildDenseCloud(point_colors = True,          # Enable point colors calculation
                          point_confidence = True,      # Enable point confidence calculation
                          keep_depth = True,            # Enable store depth maps option
                          progress = progress_print)
    doc.save()

    start_time = time.time()
    chunk.exportPoints(path = replace(project_filepath, '.psx', '.ply'),
                       source_data = DenseCloudData,
                       binary = True, 
                       save_normals = True, 
                       save_colors = True, 
                       save_classes = False,
                       save_confidence = True,
                       raster_transform = RasterTransformNone,
                       colors_rgb_8bit = True,
                       format = PointsFormatPLY,
                       split_in_blocks = False,
                       progress = progress_print)
    doc.save()



if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    args = parser.parse_args()
    main()
