#!/usr/bin/env python
"""
Convert cameras from raw format (CR2 or ARW) to JPG using `darktable-cli`.
"""

import argparse
import os
import sys
import glob
import subprocess
import shlex
import shutil
import multiprocessing as mp
from multiprocessing import Pool

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2022 Pim Bongaerts'
__license__ = 'GPL'

RAW_FOLDER_POSTFIX = '.raw'
PHOTO_FOLDER_POSTFIX = '.photos'
MIN_PHOTOS = 200
TEMP_CONFIG_PATH = '/home/deepcat/tmp/config'
TEMP_PHOTO_PATH = '/home/deepcat/tmp/output'

def detect_raw_extension(raw_camera_path):
    """ Detect if the folder contains CR2 or ARW files """
    cr2_files = glob.glob(f'{raw_camera_path}/*.CR2')
    arw_files = glob.glob(f'{raw_camera_path}/*.ARW')
    
    if cr2_files:
        return 'CR2'
    elif arw_files:
        return 'ARW'
    else:
        sys.exit(f'No RAW files (CR2 or ARW) found in {raw_camera_path}')

def call_proc(cmd):
    subprocess.run(shlex.split(cmd), stdout=subprocess.PIPE, stderr=subprocess.PIPE)

def convert_cameras(camera_extension):
    """ Convert raw files (CR2 or ARW) to the specified format """
    raw_camera_path = f"{os.getcwd()}/{os.path.basename(os.getcwd())}{RAW_FOLDER_POSTFIX}"
    temp_config_path = f"{TEMP_CONFIG_PATH}/{os.path.basename(os.getcwd())}"
    photo_camera_path = f"{os.getcwd()}/{os.path.basename(os.getcwd())}{PHOTO_FOLDER_POSTFIX}"
    temp_photo_camera_path = f"{TEMP_PHOTO_PATH}/{os.path.basename(os.getcwd())}{PHOTO_FOLDER_POSTFIX}"

    raw_extension = detect_raw_extension(raw_camera_path)

    raw_images = glob.glob(f'{raw_camera_path}/*.{raw_extension}')
    conv_images = glob.glob(f'{photo_camera_path}/*.{camera_extension}')

    if len(raw_images) == len(conv_images):
        print(f'RAW images already converted: {os.getcwd()}')
        return
    elif len(conv_images) > len(raw_images):
        print(f'More original images than RAW images?: {os.getcwd()}')
        return

    print(f'Converting cameras for {os.getcwd()}')

    # Create temporary output folders
    os.makedirs(temp_photo_camera_path, exist_ok=True)
    os.makedirs(temp_config_path, exist_ok=True)

    # Create batch command list for parallelization
    cmds_list = []
    for filename in raw_images:
        temp_config_filepath = f'{temp_config_path}/{os.path.splitext(os.path.basename(filename))[0]}'
        os.makedirs(temp_config_filepath, exist_ok=True)

        old_file_path = os.path.join(raw_camera_path, filename)
        temp_filepath = f'{temp_photo_camera_path}/{os.path.splitext(os.path.basename(filename))[0]}.{camera_extension}'
        cmd = f'darktable-cli {old_file_path} {temp_filepath} --core --configdir {temp_config_filepath}'
        cmds_list.append(cmd)

    # Execute across all cores
    pool = Pool(mp.cpu_count())
    pool.map(call_proc, cmds_list)
    pool.close()
    pool.join()

    # Move folder across
    shutil.move(temp_photo_camera_path, photo_camera_path)

    # Delete temporary folders/files
    shutil.rmtree(temp_photo_camera_path, ignore_errors=True)
    shutil.rmtree(temp_config_path, ignore_errors=True)

def remove_RAW_folder(camera_extension):
    raw_camera_path = f"{os.getcwd()}/{os.path.basename(os.getcwd())}{RAW_FOLDER_POSTFIX}"
    photo_camera_path = f"{os.getcwd()}/{os.path.basename(os.getcwd())}{PHOTO_FOLDER_POSTFIX}"

    raw_extension = detect_raw_extension(raw_camera_path)
    raw_count = len(glob.glob(f'{raw_camera_path}/*.{raw_extension}'))
    photo_count = len(glob.glob(f'{photo_camera_path}/*.{camera_extension}'))

    if raw_count == photo_count:
        shutil.rmtree(raw_camera_path, ignore_errors=True)
        print(f'Removed RAW images and folder: {raw_camera_path}')
    else:
        sys.exit(f'There was a mismatch between RAW and converted images: {raw_camera_path}')

def main(camera_extension):
    convert_cameras(camera_extension)
    remove_RAW_folder(camera_extension)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('-c', '--camera_extension', dest='camera_extension',
                        metavar='camera_extension', default='jpg',
                        help='Extension/format of converted cameras (default: jpg)')
    args = parser.parse_args()
    main(args.camera_extension)