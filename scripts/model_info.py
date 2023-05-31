#!/usr/bin/env python
"""

"""
import Metashape
import os
import subprocess

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2020-23 Pim Bongaerts'
__license__ = 'GPL'

def main():
    file_name = '{0}/{1}.psx'.format(os.getcwd(), os.path.basename(os.getcwd()))
    file_name_only = os.path.basename(file_name)
    doc = Metashape.app.document
    try:
        doc.open(file_name)
        chunk = doc.chunk
    except:
        slack_msg = 'There was an error opening {0}'.format(file_name_only)
        print(slack_msg)
        command = '/home/deepcat/tools/local_scripts/post_to_slack.sh "{0}"'.format(slack_msg)
        process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        output, error = process.communicate()

    photos_not_aligned = 0
    photos_aligned = 0
    closeups_not_aligned = 0
    closeups_aligned = 0

    for camera in chunk.cameras:
        if camera.group:
            if camera.group.label == 'closeup' and not camera.transform:
                closeups_not_aligned +=1
            elif camera.group.label == 'closeup' and camera.transform:
                closeups_aligned +=1
            elif camera.group.label != 'closeup' and not camera.transform:
                photos_not_aligned +=1
            elif camera.group.label != 'closeup' and camera.transform:
                photos_aligned +=1
        else:
            if not camera.transform:
                photos_not_aligned +=1
            else:
                photos_aligned +=1        


    try:
        pointcloud_size = chunk.point_cloud.point_count
    except:
        pointcloud_size = 0

    slack_msg = '{0}: {1}/{2} photos aligned, {3}/{4} closeups aligned, {5:.3f}B points.'.format(
                                                                    file_name_only,
                                                                    photos_aligned,
                                                                    photos_aligned+photos_not_aligned,
                                                                    closeups_aligned,
                                                                    closeups_aligned+closeups_not_aligned,
                                                                    pointcloud_size / 1000000000)
    print(slack_msg)
    command = '/home/deepcat/tools/local_scripts/post_to_slack.sh "{0}"'.format(slack_msg)
    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    output, error = process.communicate()

if __name__ == '__main__':
    main()