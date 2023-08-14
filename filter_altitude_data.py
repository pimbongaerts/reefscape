#!/usr/bin/env python
"""

"""
import argparse

COL_DEPTH = 3
COL_BOTTOMDEPTH = 9


def main(altimeter_filename):
    altimeter_file = open(altimeter_filename, 'r')
    for line in altimeter_file:
        cols = line.replace(',', ' ').split()
        if cols[COL_BOTTOMDEPTH] == 'extrapolated_depth':
            # Output header
            print(','.join(cols))
        else:
            # Only include data with altitude measurements 
            # and with depth of >2 m 
            depth = float(cols[COL_DEPTH])
            bottom_depth = float(cols[COL_BOTTOMDEPTH])
            depth_category = 0
            if (depth > 2 and bottom_depth != -999):
                if 3 < bottom_depth < 7:
                    depth_category = 5
                elif 8 < bottom_depth < 12:
                    depth_category = 10
                elif 18 < bottom_depth < 22:
                    depth_category = 20
                elif 38 < bottom_depth < 42:
                    depth_category = 40
                elif 58 < bottom_depth < 62:
                    depth_category = 60
                cols.append(str(depth_category))
                print(','.join(cols))
    altimeter_file.close()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('altimeter_filename', metavar='altimeter_file',
                        help='csv file with altimeter data')
    args = parser.parse_args()
    main(args.altimeter_filename)
