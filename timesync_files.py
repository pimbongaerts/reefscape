#!/usr/bin/env python
"""
Script syncs altimeter metadata with cameras based on offset

Important to set local timezone in shell: 
$ TZ='UTC0'; export TZ
"""
import argparse
import datetime
import time

CAM_TIMECOL = 1
ALT_TIMECOL = 2

def get_unixtime(timestring):
    """ """
    return time.mktime(datetime.datetime.strptime(timestring, "%Y:%m:%d %H:%M:%S").timetuple())

def has_numbers(inputstring):
    """ """
    return any(char.isdigit() for char in inputstring)

def get_closest_match(timestamp, timestamps): 
    return timestamps[min(range(len(timestamps)), key = lambda i: abs(timestamps[i]-timestamp))] 

def read_cam_file(filename, timecol):
    """ """
    timestamps = []
    lines = {}
    file = open(filename, 'r')
    for line in file:
        cols = line.split(',')
        timestamp = int(get_unixtime(cols[timecol].strip()))
        timestamps.append(timestamp)
        lines[timestamp] = line.strip()
    file.close()
    return timestamps, lines

def read_alt_file(filename, timecol):
    """ """
    timestamps = []
    lines = {}
    file = open(filename, 'r')
    header = ''
    for line in file:
        cols = line.split(',')
        if has_numbers(cols[timecol]):
            timestamp = int(cols[timecol].strip())
            timestamps.append(timestamp)
            lines[timestamp] = line.strip()
        else:
            header = line.strip()
    file.close()
    return header, timestamps, lines

def main(cam_filename, alt_filename, offset, max_dev):
    # Read camera and altitude files
    cam_timestamps, cam_lines = read_cam_file(cam_filename, CAM_TIMECOL)
    alt_header, alt_timestamps, alt_lines = read_alt_file(alt_filename, ALT_TIMECOL)

    # Output header
    print('camera,camera_datetime,camera_unixtime,camera_offset_unixtime,{0}'.format(alt_header))

    # Output cameras and matched altitude metadata
    for cam_timestamp in cam_timestamps:
        cam_offset_timestamp = cam_timestamp + int(offset)
        alt_matching_timestamp = get_closest_match(cam_offset_timestamp, alt_timestamps)
        
        if abs(cam_offset_timestamp - alt_matching_timestamp) > int(max_dev):
            print('{0},{1},{2},no_match'.format(cam_lines[cam_timestamp], cam_timestamp, 
                                                cam_offset_timestamp))
        else:
            print('{0},{1},{2},{3}'.format(cam_lines[cam_timestamp], cam_timestamp, 
                                           cam_offset_timestamp, alt_lines[alt_matching_timestamp]))

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('cam_filename', metavar='cam_filename',
                        help='cam_filename')
    parser.add_argument('alt_filename', metavar='alt_filename',
                        help='alt_filename')
    parser.add_argument('offset', metavar='offset',
                        help='offset (in sec) of alt_filename compared to cam_filename')
    parser.add_argument('max_dev', metavar='max_dev',
                        help='maximum allowed deviation between time (in sec)')
    args = parser.parse_args()
    main(args.cam_filename, args.alt_filename, args.offset, args.max_dev)
