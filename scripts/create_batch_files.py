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
    """ Get ply path based on model name """
    return '{0}\\{1}\\{2}\\{3}\\{3}.ply'.format(BASE_PATH_WINDOWS, model_name[0:7],
                                                model_name[0:11], model_name[0:20])

def get_windows_model_viscore_path(model_name):
    """ Get folder name based on model name """
    return '{0}\\{1}\\{2}\\{3}\\{3}.vis'.format(BASE_PATH_WINDOWS, model_name[0:7],
                                                model_name[0:11], model_name[0:20])

def get_int_behind_string(line, search_string):
    """ Get 4-digit int value behind a particular string """
    pos = line.find(search_string)
    if pos == -1:
        return 0
    else:
        try:
            return int(line[pos+len(search_string)+1:pos+len(search_string)+5])
        except:
            print('error:', line)
            exit()


def main(README_filename):
    readme_file = open(README_filename, 'r')
    densecloud_batch_file = open('densecloud_batch.sh', 'w')
    viscore_batch_file = open('viscore_batch.bat', 'w')
    decimate_batch_file = open('decimate_batch.sh', 'w')
    ortho_batch_file = open('ortho_batch.sh', 'w')
    for line in readme_file:
        model_name = line[11:40].strip()
        if len(model_name) == 20:  # Ignore models with names other than 20 characters
            if ('CR2' in line) and ('PSX' not in line) and ('@ea' not in line):
                CR2_count = get_int_behind_string(line, 'CR2')
                JPG_count = get_int_behind_string(line, 'JPG')

                if CR2_count > MIN_IMG or JPG_count > MIN_IMG:
                    densecloud_batch_file.write('cd {0}\n'.format(get_linux_model_folder(model_name)))
                    densecloud_batch_file.write('{0}\n'.format(DENSECLOUD_SCRIPT))
            elif all(x in line for x in ['PLY', 'CAM', 'MET']):
                if ('VIS' not in line):
                    windows_model_viscore_path = get_windows_model_viscore_path(model_name)
                    viscore_batch_file.write('mkdir {0}\n'.format(windows_model_viscore_path))
                    viscore_batch_file.write('if exist {0}\\ ({1} {2} {0}\\{3})\n'.format(windows_model_viscore_path,
                                                                                  VISCORE_EXEC, 
                                                                                  get_windows_model_ply_filepath(model_name),
                                                                                  model_name))
                if ('DEC' not in line):
                    decimate_batch_file.write('# Decimation of {0}\n'.format(get_linux_model_folder(model_name)))
                    decimate_batch_file.write('cd {0}\n'.format(get_linux_model_folder(model_name)))
                    decimate_batch_file.write('xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O {0}.ply -SS RANDOM 50000000\n'.format(model_name))
                    decimate_batch_file.write('mv {0}_RANDOM_SUBSAMPLED.ply {0}_dec50M.ply\n'.format(model_name))
                    decimate_batch_file.write('xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O {0}_dec50M.ply -SS RANDOM 5000000\n'.format(model_name))
                    decimate_batch_file.write('mv {0}_dec50M_RANDOM_SUBSAMPLED.ply {0}_dec5M.ply\n'.format(model_name))
                
                if ('ORTHO' not in line):
                    decimate_batch_file.write('# Ortho-generation of {0}\n'.format(get_linux_model_folder(model_name)))

    readme_file.close()
    densecloud_batch_file.close()
    viscore_batch_file.close()
    decimate_batch_file.close()
    ortho_batch_file.close()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('README_filename', 
                        metavar='README_filename')
    args = parser.parse_args()
    main(args.README_filename)