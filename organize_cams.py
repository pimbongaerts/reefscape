#!/usr/bin/env python
"""

"""
import argparse
import os
import sys
import datetime
import shutil

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2023 Pim Bongaerts'
__license__ = 'GPL'

MIN_PHOTOS = 200
DEPTHS = [60, 40, 20, 10, 5, 0, 0]


def get_filetimestamps(directory):
    file_list = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.lower().endswith(('.jpg', '.cr2')):
                file_path = os.path.join(root, file)
                timestamp = os.path.getmtime(file_path)
                datetime_obj = datetime.datetime.fromtimestamp(timestamp)
                file_list.append((file_path, datetime_obj))
    return file_list

def is_less_than_threshold_apart(timestamp1, timestamp2, time_threshold):
    if timestamp1:
        time_diff = abs(timestamp1 - timestamp2)
        return time_diff < datetime.timedelta(seconds=time_threshold)
    else:
        return False

def get_files_by_depth(sorted_filetimestamps, time_threshold):
    prev_timestamp = 0
    file_group = []
    depth_groups = {}
    current_depth_group_id = 0
    for file, timestamp in sorted_filetimestamps:
        if len(file_group) == 0:
            file_group.append(file)
        elif is_less_than_threshold_apart(prev_timestamp, timestamp, time_threshold):
            file_group.append(file)
        elif len(file_group) > MIN_PHOTOS:
            depth_groups[DEPTHS[current_depth_group_id]] = file_group
            current_depth_group_id +=1
            file_group = []
            file_group.append(file)
        else:
            file_group = []
            file_group.append(file)
        prev_timestamp = timestamp
    if len(file_group) > MIN_PHOTOS:
        depth_groups[DEPTHS[current_depth_group_id]] = file_group
    return depth_groups

def verify_depth_groups_and_paths(depth_groups, depth_group_targets):
    for depth in depth_groups:
        print('{0}m: {1}..{2} ({3} photos) to {4}'.format(depth, 
                                                  os.path.basename(depth_groups[depth][0]),
                                                  os.path.basename(depth_groups[depth][len(depth_groups[depth])-1]), 
                                                  len(depth_groups[depth]),
                                                  depth_group_targets[depth]))

    user_input = input("PLEASE ENSURE the above looks correct and you want to proceed with copy? Enter 'yes' to proceed...\n")
    if user_input.lower() != "yes":
        sys.exit("File copy aborted.")

def get_list_of_destination_folders(destination_path, location_id, model_datetime, depth_groups, folder_type):
    dest_folders = []
    depth_group_targets = {}
    loc_folder = os.path.join(destination_path, location_id)
    dest_folders.append(loc_folder)
    for depth in depth_groups:
        loc_dpt_folder = os.path.join(loc_folder, '{0}_{1:02d}m'.format(location_id, depth))
        dest_folders.append(loc_dpt_folder)
        loc_dpt_dat_folder = os.path.join(loc_dpt_folder, '{0}_{1:02d}m_{2}'.format(location_id, depth, model_datetime))
        dest_folders.append(loc_dpt_dat_folder)
        loc_dpt_dat_photos_folder = os.path.join(loc_dpt_dat_folder, '{0}_{1:02d}m_{2}.{3}'.format(location_id, depth, 
                                                                                               model_datetime, folder_type))
        dest_folders.append(loc_dpt_dat_photos_folder)
        depth_group_targets[depth] = loc_dpt_dat_photos_folder
    return dest_folders, depth_group_targets

def create_destination_folders(dest_folders):
    for folder in dest_folders:
        if not os.path.exists(folder):
            os.makedirs(folder)
            print('Created folder: {0}'.format(folder))

def copy_files(depth_groups, depth_group_targets):
    for depth in depth_groups:
        print('Copying {1}..{2} ({3} photos) to {4}:'.format(depth, 
                                                  os.path.basename(depth_groups[depth][0]),
                                                  os.path.basename(depth_groups[depth][len(depth_groups[depth])-1]), 
                                                  len(depth_groups[depth]),
                                                  depth_group_targets[depth]), end='')
        for file in depth_groups[depth]:
            try:
                shutil.copy(file, depth_group_targets[depth])
                print('.', end='')
                sys.stdout.flush()
            except IOError as e:
                sys.exit('An error occurred while copying the file: {}'.format(file))
        print('Done.')

def main(location_id, destination_path, folder_type, time_threshold):
    # Get all the image files (CR2/JPG) in current folder and its subfolder
    current_directory = os.getcwd()
    filetimestamps = get_filetimestamps(current_directory)
    # Sort by timestamp
    sorted_filetimestamps = sorted(filetimestamps, key=lambda x: x[1])

    # Find large sequences of files that are less than 10secs apart
    depth_groups = get_files_by_depth(sorted_filetimestamps, time_threshold)

    # Get model datetime code from first file in first sequence
    first_datetime = datetime.datetime.fromtimestamp(os.path.getmtime(depth_groups[DEPTHS[0]][0]))
    model_datetime = '{0:02d}{1:02d}{2:02d}'.format(first_datetime.year, first_datetime.month, first_datetime.day)

    # Create list of destination folders
    dest_folders, depth_group_targets = get_list_of_destination_folders(destination_path, location_id, 
                                                                           model_datetime, depth_groups,
                                                                           folder_type)

    # Verify the file sequences and destination paths before proceeding
    verify_depth_groups_and_paths(depth_groups, depth_group_targets)

    # Create destination folders
    create_destination_folders(dest_folders)

    # Copy over file sequences
    copy_files(depth_groups, depth_group_targets)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('location_id', metavar='location_id',
                        help='location_id (e.g. cur_kal')
    parser.add_argument('destination_path', metavar='destination_path',
                        help='destination path to copy photos to (e.g. /volume2/coral3d/focal_plots)')
    parser.add_argument('folder_type', metavar='folder_type',
                        help='destination folder type (e.g. raw or photos or closeup)')
    parser.add_argument('-t', '--time_threshold', dest='time_threshold',
                        metavar='time_threshold', default=20,
                        help='maximum time in sec between photos to be considered a sequence (default = 20)')
    args = parser.parse_args()
    main(args.location_id, args.destination_path, args.folder_type, int(args.time_threshold))