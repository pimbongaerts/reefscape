#!/usr/bin/env python
"""

"""
import argparse
import os
import sys
import time
import glob

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2022 Pim Bongaerts'
__license__ = 'GPL'

RAW_EXTENSION = 'CR2'
RAW_FOLDER_POSTFIX = '.raw'
PHOTO_FOLDER_POSTFIX = '.photos'
MIN_PHOTOS = 200

def convert_cameras(camera_extension):
    """ Get the paths for each camera """
    raw_camera_path = '{0}/{1}{2}'.format(os.getcwd(), os.path.basename(os.getcwd()), RAW_FOLDER_POSTFIX)
    photo_camera_path = '{0}/{1}{2}'.format(os.getcwd(), os.path.basename(os.getcwd()), PHOTO_FOLDER_POSTFIX)
    camera_list = []
    
    if os.path.exists(photo_camera_path):
      camera_count = len([filename for filename in os.listdir('.') if filename.endswith(camera_extension)])
      for filename in os.listdir(photo_camera_path):
        if filename.endswith('.' + camera_extension):
            filepath = os.path.join(photo_camera_path, filename)
            camera_list.append(filepath)
      if len(camera_list) > MIN_PHOTOS:
        print('Cameras already converted to {}!'.format(camera_extension))
        return
    else:
      try:
        os.mkdir(photo_camera_path)
      except OSError:
        sys.exit('Could not create folder: {}'.format(photo_camera_path))
    
    for filename in os.listdir(raw_camera_path):
        if filename.endswith(RAW_EXTENSION):
            old_filepath = os.path.join(raw_camera_path, filename)
            new_filename = filename.replace(RAW_EXTENSION, camera_extension)
            new_filepath = '{0}/{1}'.format(photo_camera_path, new_filename)
            print('Converting {0} to {1}...'.format(filename, new_filename))
            process = subprocess.Popen('darktable-cli {0} {1}'.format(old_filepath, new_filepath), 
                                       shell=True)
            process.wait()
            camera_list.append(new_filepath)

def remove_RAW_folder(camera_extension):
    raw_camera_path = '{0}/{1}{2}'.format(os.getcwd(), os.path.basename(os.getcwd()), RAW_FOLDER_POSTFIX)
    photo_camera_path = '{0}/{1}{2}'.format(os.getcwd(), os.path.basename(os.getcwd()), PHOTO_FOLDER_POSTFIX)

    raw_count = len(glob.glob1(raw_camera_path,'*.{}'.format(RAW_EXTENSION)))
    photo_count = len(glob.glob1(photo_camera_path,'*.{}'.format(camera_extension)))

    if raw_count == photo_count:
        try:
            os.system('rm -rf {}'.format(raw_camera_path))
        except OSError:
            sys.exit('Could not remove RAW folder: {}'.format(raw_camera_path))

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