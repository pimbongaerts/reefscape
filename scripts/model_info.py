#!/usr/bin/env python
"""

"""
import Metashape
import argparse

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2020 Pim Bongaerts'
__license__ = 'GPL'

def main(file_name):
    doc = Metashape.app.document
    doc.open(file_name)
    chunk = doc.chunk

    cameras_not_aligned = []
    for camera in chunk.cameras:
        if not camera.transform:
            cameras_not_aligned.append(camera)
    print('{0} out of {1} cameras not aligned'.format(len(cameras_not_aligned),
                                                      len(chunk.cameras)))
    print(chunk.dense_cloud.point_count)
    print(chunk.meta)
    print(chunk.depth_maps.meta)
    print(chunk.dense_cloud.meta)
    

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('-f', '--file_name', dest='file_name',
                        metavar='file_name',
                        help='Agisoft project filename')
    args = parser.parse_args()
    main(file_name)