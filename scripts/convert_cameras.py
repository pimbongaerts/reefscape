#!/usr/bin/env python
"""

"""
import argparse
import os
import sys
import time
import glob
import subprocess
import shlex
import shutil
import multiprocessing as mp
from multiprocessing import Pool

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2022 Pim Bongaerts'
__license__ = 'GPL'

RAW_EXTENSION = 'CR2'
RAW_FOLDER_POSTFIX = '.raw'
PHOTO_FOLDER_POSTFIX = '.photos'
MIN_PHOTOS = 200
TEMP_CONFIG_PATH = '/data/tmp/config'
TEMP_PHOTO_PATH = '/data/tmp/output'

def call_proc(cmd):
    subprocess.run(shlex.split(cmd), stdout=subprocess.PIPE, stderr=subprocess.PIPE)

def convert_cameras(camera_extension):
    """ Get the paths for each camera """
    raw_camera_path = '{0}/{1}{2}'.format(os.getcwd(), os.path.basename(os.getcwd()), RAW_FOLDER_POSTFIX)
    temp_photo_camera_path = '{0}/{1}/{1}{2}'.format(TEMP_PHOTO_PATH, os.path.basename(os.getcwd()), PHOTO_FOLDER_POSTFIX)
    temp_config_path = temp_config_path = '{0}/{1}'.format(CONFIG_TEMP_PATH, os.path.basename(os.getcwd()))
    photo_camera_path = '{0}/{1}{2}'.format(os.getcwd(), os.path.basename(os.getcwd()), PHOTO_FOLDER_POSTFIX)

    if os.path.exists(raw_camera_path) and os.path.exists(photo_camera_path):
        raw_images = glob.glob('{0}/*.{1}'.format(raw_camera_path, RAW_EXTENSION))
        conv_images = glob.glob('{0}/*.{1}'.format(photo_camera_path, camera_extension))
        if len(raw_images) == len(conv_images):
            print('RAW images already converted: {}'.format(os.getcwd()))
            return
        elif len(conv_images) > len(raw_images):
            print('More original images than RAW images?: {}'.format(os.getcwd()))
            return
    elif os.path.exists(raw_camera_path) and not os.path.exists(photo_camera_path):
       raw_images = glob.glob('{0}/*.{1}'.format(raw_camera_path, RAW_EXTENSION))
       if len(raw_images) == 0:
            sys.exit('No RAW or converted cameras found: {}'.format(os.getcwd()))
    elif not os.path.exists(raw_camera_path) and not os.path.exists(photo_camera_path):
        sys.exit('No RAW or converted cameras found: {}'.format(os.getcwd()))

    print('Converting cameras for {}'.format(os.getcwd()))

    # Create batch command list for parallelization
    # and temporary config folders
    for filename in raw_images:
        temp_config_filepath = '{0}/{1}'.format(temp_config_path, 
                                str(os.path.basename(filename).split('.')[0]))
        try:
            os.mkdir('/tmp/' + str(os.path.basename(i).split('.')[0]))
        except  OSError:
            sys.exit('Could not create folder: {}'.format(temp_config_filepath))

        old_file_path = os.path.join(raw_camera_path, filename)
        new_filename = filename.replace(RAW_EXTENSION, camera_extension)
        temp_filepath = '{0}/{1}'.format(temp_photo_camera_path, new_filename)

        cmds_list.append('darktable-cli {0} {1} --configdir {2}'.format(old_file_path, temp_filepath, temp_config_path))

    # Execute across all cores
    # pool = Pool(mp.cpu_count())
    # pool.map(call_proc, cmds_list)
    # pool.close()
    # pool.join()
    print(cmds_list)

    # Move folder across
    try:
        print('shutils '+temp_photo_camera_path+photo_camera_path)
        #shutil.move(temp_photo_camera_path, photo_camera_path)
    except:
        sys.exit('Could not move folder: {0} to {1}'.format(temp_photo_camera_path, photo_camera_path))

    # Delete temporary files
    cmd = 'rm -rf {}'.format(temp_photo_camera_path)
    print(cmd)
    cmd = 'rm -rf {}'.format(temp_config_path)
    print(cmd)
    # os.system(cmd)
    
def remove_RAW_folder(camera_extension):
    
    raw_camera_path = '{0}/{1}{2}'.format(os.getcwd(), os.path.basename(os.getcwd()), RAW_FOLDER_POSTFIX)
    photo_camera_path = '{0}/{1}{2}'.format(os.getcwd(), os.path.basename(os.getcwd()), PHOTO_FOLDER_POSTFIX)

    raw_count = len(glob.glob1(raw_camera_path,'*.{}'.format(RAW_EXTENSION)))
    photo_count = len(glob.glob1(photo_camera_path,'*.{}'.format(camera_extension)))

    if raw_count == photo_count:
        try:
            cmd = 'rm -rf {}'.format(raw_camera_path)
            print(cmd)
            #os.system('rm -rf {}'.format(raw_camera_path))
            print('Removed RAW images and folder: {}'.format(raw_camera_path))
        except OSError:
            sys.exit('Could not remove RAW folder: {}'.format(raw_camera_path))
    else:
        sys.exit('There was a mismatch betweeen RAW and converted images: {}'.format(raw_camera_path))

def main(camera_extension):
    convert_cameras(camera_extension)
    remove_RAW_folder(camera_extension)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('-c', '--camera_extension', dest='camera_extension',
                        metavar='camera_extension', default='jpg',
                        help='extension/format of converted cameras (default: jpg)')
    args = parser.parse_args()
    main(args.camera_extension)