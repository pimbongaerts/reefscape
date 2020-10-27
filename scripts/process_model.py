#!/usr/bin/env python
"""
Constructs and exports dense point cloud from raw images,
using the Metashape API.

Usage: 
./metashape.sh -platform offscreen -r process_model.py
or create an alias:
alias densecloud="~/path_to_metashape-pro/metashape.sh -platform offscreen \
                                                       -r ~/protocols/scripts/process_model.py"

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

PATH_NOT_SET = '[pwd]'
EXTENSION_RAW = 'CR2'

class Model(object):
    """ Model Class """
    def __init__(self, path, camera_format, min_aligned):
        self.path = self.__get_path(path)
        self.camera_format = camera_format
        self.min_aligned = min_aligned

        self.agisoft_filepath = self.__get_file_path('psx')
        self.ply_filepath = self.__get_file_path('ply')
        self.cams_xml_filepath = self.__get_file_path('cams.xml')
        self.cams_meta_filepath = self.__get_file_path('meta.json')
        self.raw_camera_path = self.__get_file_path('raw')
        self.photo_camera_path = self.__get_file_path('photos')

        # self.camera_list = []
        # self.aligned_ratio = 0
        # self.job_start_time = time.time()

    def open_or_create_agisoft_model(self):
        """ Open existing agisoft project or create new """
        self.doc = Metashape.Document()
        if os.path.isfile(self.agisoft_filepath):
            self.doc.open(self.agisoft_filepath)
        else:
            self.doc.save(self.agisoft_filepath)
        # Add chunk if it does not already exists
        if not self.doc.chunk:
            self.chunk = self.doc.addChunk()
        else:
            self.chunk = self.doc.chunk

    def convert_cameras(self):
        """ Convert RAW images if required """
        if !os.path.exists(self.photo_camera_path):
            try:
                os.mkdir(self.photo_camera_path)
            except OSError:
                sys.exit('Could not create folder: {}'.format(self.photo_camera_path))

        self.camera_list = []
        for filename in os.listdir(self.raw_camera_path):
            if filename.endswith(EXTENSION_RAW):
                old_filepath = os.path.join(self.raw_camera_path, filename)
                new_filename = filename.replace(EXTENSION_RAW, self.camera_format)
                new_filepath = '{0}/{1}'.format(self.photo_camera_path, new_filename)
                
                if !os.path.exists(model.new_filepath):
                    print('Converting {0} to {1}...'.format(filename, new_filename))
                    process = subprocess.Popen('darktable-cli {0} {1}'.format(old_filepath, 
                                                                          new_filepath), 
                                               shell=True)
                    process.wait()
                self.camera_list.append(new_filepath)

    def add_cameras(self):
        """ Check if cameras are present and added to Agisoft project """
        if len(self.chunk.cameras) > 0:
            return
        if len(self.camera_list) == 0:
            for filename in os.listdir(self.raw_camera_path):
                if filename.endswith('.' + self.camera_format):
                    self.camera_list.append(os.path.join(self.photo_camera_path, 
                                                         filename))
        if len(self.camera_list) > 0:
            self.chunk.addPhotos(self.camera_list)
            self.doc.save()
        else:
            sys.exit('No cameras in {}'.format(self.photo_camera_path))

    def match_and_align_cameras(self):
        if not self.__above_alignment_threshold():
            self.chunk.matchPhotos(downscale = 1,            # Image alignment accuracy = High
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
            self.chunk.alignCameras(adaptive_fitting = True,         # Enable adaptive fitting of distortion coefficients
                                    reset_alignment = True,          # Reset current alignment
                                    progress = progress_print)
            self.doc.save()
        if not self.__above_alignment_threshold():
            sys.exit('Unsufficient cameras aligned: {0} / {1}'.format(len(self.aligned_cameras),
                                                                      len(self.chunk.cameras)))

    def build_depth_maps(self):
        self.chunk.buildDepthMaps(downscale = 2,                 # Depth map quality = High (2)
                                  filter_mode = Metashape.MildFiltering,
                                  reuse_depth = False,           # Disable reuse depth maps option
                                  progress = progress_print)
        self.doc.save()

    def build_dense_cloud(self):
        self.chunk.buildDenseCloud(point_colors = True,          # Enable point colors calculation
                                   point_confidence = True,      # Enable point confidence calculation
                                   keep_depth = True,            # Enable store depth maps option
                                   progress = progress_print)

        self.doc.save()

    def explort_ply(self):
        self.chunk.exportPoints(path = self.ply_filepath,
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

    def export_camera_positions(self):
        self.chunk.exportCameras(self.cams_xml_filepath)

    def export_camera_metadata(self):
        """ Export camera metadata for Viscore (from extract_meta.py script) """
        meta_file = open(self.cams_meta_filepath, 'w')
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

    def __above_alignment_threshold(self):
        self.aligned_cameras = []
        self.non_aligned_cameras = []
        for camera in self.chunk.cameras:
            if not camera.transform:
                self.non_aligned_cameras.append(camera)
            else:
                self.aligned_cameras.append(camera)
        self.aligned_ratio = len(self.aligned_cameras) / len(self.non_aligned_cameras)
        if self.aligned_ratio < self.min_aligned:
            return True
        else:
            return False

    def __get_file_path(self, extension):
        return '{0}/{1}.{2}'.format(self.path, os.path.basename(self.path), extension)

    @staticmethod
    def __get_path(path):
        """ Determine path for model: default is """
        if path = PATH_NOT_SET:
            return os.getcwd()
        else:
            if os.path.exists(path):
                return path
            else:
                sys.exit('Cannot find path: {}'.format(path))

class Log(object):
    """ Log Class """
    def __init__(self, path):
        self.file_path = '{0}/{1}.log'.format(self.path, 
                                              os.path.basename(self.path))
        if !os.path.exists(file_path):
            self.file = open(file_path, 'w')
            self.file.close()

 

def main(path, camera_format, min_aligned):
    
    model = Model(path, camera_format, min_aligned)
    model.open_or_create_agisoft_model()
    model.convert_cameras()
    model.add_cameras()
    model.match_and_align_cameras()
    model.build_depth_maps()
    model.build_dense_cloud()
    model.explort_ply()
    model.export_camera_positions()
    model.export_camera_metadata()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('-p', '--path', dest='path',
                        metavar='path', default=PATH_NOT_SET,
                        help='path (default: present working directory)')
    parser.add_argument('-c', '--camera_format', dest='camera_format',
                        metavar='camera_format', default='jpg',
                        help='format/extension of cameras (default: jpg)')
    parser.add_argument('-m', '--min_aligned', dest='min_aligned',
                        metavar='min_aligned', default=0.8, type=float,
                        help='minimum proportion of cameras aligned (default 0.8)')
    args = parser.parse_args()
    main(args.path, args.camera_format, args.min_aligned)