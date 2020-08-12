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

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2020 Pim Bongaerts'
__license__ = 'GPL'

CAMERA_EXTENSION = 'jpeg'

def get_cameras(camera_path):
    """ Get the paths for each camera """
    camera_list = []
    for filename in os.listdir(camera_path):
        if filename.endswith('.' + CAMERA_EXTENSION):
            filepath = os.path.join(camera_path, filename)
            camera_list.append(filepath)
    return camera_list

def main(project_name, camera_path):

    doc = Metashape.app.document
    doc.save(project_name)

    chunk = doc.addChunk()
    chunk.crs = Metashape.CoordinateSystem("EPSG::4612")
    chunk.addPhotos(get_cameras(camera_path))
    doc.save()

    chunk.matchPhotos(downscale = 1,                    # Image alignment accuracy = High
                      generic_preselection = True,      # Enable generic preselection
                      reference_preselection = False,   # Disable reference preselection
                      filter_mask = False,              # Disable filtering points by mask
                      mask_tiepoints = False,           # Disable applying mask filter to tie points
                      keypoint_limit = 5000,            
                      tiepoint_limit = 0,
                      keep_keypoints = False,           # Do not store keypoints in the project
                      guided_matching = False,          # Disable guided image matching
                      reset_matches = True)             # Resent current matches
    doc.save()

    chunk.alignCameras(adaptive_fitting = True,         # Enable adaptive fitting of distortion coefficients
                       reset_alignment = True)          # Reset current alignment
    doc.save()

    chunk.buildDepthMaps(downscale = 2,                 # Depth map quality = High (2)
                         filter_mode = Metashape.MildFiltering,
                         reuse_depth = False)           # Disable reuse depth maps option
    doc.save()

    chunk.buildDenseCloud(point_colors = True,          # Enable point colors calculation
                          point_confidence = True,      # Enable point confidence calculation
                          keep_depth = True)            # Enable store depth maps option
    doc.save()


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('project_name', metavar='project_name',
                        help='name of new Metashape project')
    parser.add_argument('camera_path', metavar='camera_path',
                        help='path with cameras to be used in dense cloud')
    args = parser.parse_args()
    main(args.project_name, args.camera_path)
