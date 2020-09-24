#!/usr/bin/env python
"""
Script syncs camera date/times with metadata

Combined date/time field has to be formatted like such:
2020:02:25 12:59:20
"""
import argparse
import datetime
import time

MAX_DIFFERENCE = 4

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
        if has_numbers(cols[timecol]):
            timestamp = get_unixtime(cols[timecol].strip())
            timestamps.append(timestamp)
            lines[timestamp] = line.strip()
        else:
            header = line.strip()
    file.close()
    return header, timestamps, lines


def main(file1_name, file2_name, timecol1, timecol2, offset):
    header1, timestamps1, lines1 = read_file(file1_name, int(timecol1))
    header2, timestamps2, lines2 = read_file(file2_name, int(timecol2))

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
    parser.add_argument('file1_name', metavar='file1',
                        help='file 1')
    parser.add_argument('file2_name', metavar='file2',
                        help='file 2')
    parser.add_argument('timecol1', metavar='timecol1',
                        help='timecol1')
    parser.add_argument('timecol2', metavar='timecol2',
                        help='timecol2')
    parser.add_argument('offset', metavar='offset',
                        help='offset (in sec) of file2 compared to file1')
    args = parser.parse_args()
    main(args.file1_name, args.file2_name, args.timecol1, args.timecol2, args.offset)
