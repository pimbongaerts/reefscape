#!/usr/bin/env python
"""
Script syncs camera date/times with metadata

Combined date/time field has to be formatted like such:
2020:02:25 12:59:20
"""
import argparse
import datetime
import time
import sys

MAX_DIFFERENCE = 3

CAMDIST_DATETIME_COL = 1
FIREFISH_UNIXTIME_COL = 2
FIREFISH_DEPTH_COL = 3
FIREFISH_ALT_COL = 4

def get_unixtime(timestring):
    """ """
    return time.mktime(datetime.datetime.strptime(timestring, "%Y:%m:%d %H:%M:%S").timetuple())

def has_numbers(inputstring):
    """ """
    return any(char.isdigit() for char in inputstring)

def get_closest_match(timestamp, timestamps): 
    return timestamps[min(range(len(timestamps)), key = lambda i: abs(timestamps[i]-timestamp))] 

def read_file(filename, timecol):
    """ """
    timestamps = []
    lines = {}
    file = open(filename, 'r')
    header = ''
    for line in file:
        cols = line.split(',')
        if len(cols) < timecol:
            sys.exit('Error: {}'.format(line))
        elif has_numbers(cols[timecol]):
            if cols[timecol].isnumeric():
                timestamp = int(cols[timecol].strip())
            else:
                timestamp = int(get_unixtime(cols[timecol].strip()))
            timestamps.append(timestamp)
            lines[timestamp] = line.strip()
        else:
            header = line.strip()
    file.close()
    return header, timestamps, lines


def main(cam_filename, firefish_filename, firefish_time, offset_secs):
    header1, timestamps1, lines1 = read_file(cam_filename, int(CAMDIST_DATETIME_COL))
    header2, timestamps2, lines2 = read_file(firefish_filename, int(FIREFISH_UNIXTIME_COL))

    if firefish_time:
        offset = int(firefish_time) - timestamps1[0]
        #print('Offset between first photo ({0}) and firefish ({1}) is {2} sec...'.format(timestamps1[0], firefish_time, offset))
    else:
        offset = offset_secs

    for timestamp1 in timestamps1:
        offset_timestamp1 = timestamp1 + int(offset)
        matching_timestamp2 = get_closest_match(offset_timestamp1, timestamps2)
        if int(offset_timestamp1 - matching_timestamp2) > MAX_DIFFERENCE:
            print("Too much difference in time: {0} and {1}".format(offset_timestamp1, 
                                                                    matching_timestamp2))
        else:
            print('{0},{1}'.format(lines1[timestamp1], lines2[matching_timestamp2]))

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('cam_filename', metavar='cam_filename',
                        help='cam_filename')
    parser.add_argument('firefish_filename', metavar='firefish_filename',
                        help='firefish_filename')
    parser.add_argument('-f', '--firefish_time', dest='firefish_time',
                        metavar='firefish_time',
                        help='unix time of firefish for first photograph')
    parser.add_argument('-o', '--offset', dest='offset_secs',
                        metavar='offset_secs',
                        help='offset (firefishtime  - camtime) in secs')
    args = parser.parse_args()
    main(args.cam_filename, args.firefish_filename, args.firefish_time,
         args.offset_secs)
