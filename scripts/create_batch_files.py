#!/usr/bin/env python
"""
Creates a bash script to generate dense clouds for models that have not yet been processed
(based on README.md generated with model_report.py script) & convert to Viscore for those that are ready.
"""
import argparse


__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2021 Pim Bongaerts'
__license__ = 'GPL'

BASE_PATH_LINUX = '/mnt/coral3d/focal_plots'
DENSECLOUD_SCRIPT = '~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_dense_cloud.py'

BASE_PATH_WINDOWS = 'Y:\\focal_plots'
VISCORE_EXEC = 'C:\\vid\\vcgo\\vc5.exe prep[goldi][splyfc]'

MIN_IMG = 500 # minimum number of images required

def get_linux_model_folder(model_name):
    """ Get folder name based on model name """
    return '{0}/{1}/{2}/{3}'.format(BASE_PATH_LINUX, model_name[0:7],
                                    model_name[0:11], model_name[0:20])

def get_windows_model_ply_filepath(model_name):
    """ Get folder name based on model name """
    return '{0}\\{1}\\{2}\\{3}\\{3}.ply'.format(BASE_PATH_WINDOWS, model_name[0:7],
                                                model_name[0:11], model_name[0:20])

def get_windows_model_viscore_path(model_name):
    """ Get folder name based on model name """
    return '{0}\\{1}\\{2}\\{3}\\{3}.vis'.format(BASE_PATH_WINDOWS, model_name[0:7],
                                                model_name[0:11], model_name[0:20])

def main(README_filename):
    readme_file = open(README_filename, 'r')
    densecloud_batch_file = open('densecloud_batch.sh', 'w')
    viscore_batch_file = open('viscore_batch.bat', 'w')
    for line in readme_file:
        model_name = line[11:40].strip()
        if len(model_name) == 20:  # Exclude models with longer names than 20 characters
            if ('CR2' in line) and ('PSX' not in line) and ('@ea' not in line):
                CR2_count = int(line[44:48])
                JPG_count = int(line[54:58])
                if CR2_count > MIN_IMG or JPG_count > MIN_IMG:
                    densecloud_batch_file.write('cd {0}\n'.format(get_linux_model_folder(model_name)))
                    densecloud_batch_file.write('{0}\n'.format(DENSECLOUD_SCRIPT))
            elif all(x in line for x in ['PLY', 'CAM', 'MET']) and ('VIS' not in line):
                windows_model_viscore_path = get_windows_model_viscore_path(model_name)
                viscore_batch_file.write('mkdir {0}\n'.format(windows_model_viscore_path))
                viscore_batch_file.write('if exist {0}\\ ({1} {2} {0}\\{3})\n'.format(windows_model_viscore_path,
                                                                                  VISCORE_EXEC, 
                                                                                  get_windows_model_ply_filepath(model_name),
                                                                                  model_name))

    readme_file.close()
    densecloud_batch_file.close()
    viscore_batch_file.close()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('README_filename', 
                        metavar='README_filename')
    args = parser.parse_args()
    main(args.README_filename)