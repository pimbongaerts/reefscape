#!/usr/bin/env python
"""
"""
import sys
import os
import math
import argparse

MARKER_POSTFIX = '_markers.csv'
MARKER_LABEL_COL = 1
MARKER_X_COL = 2
MARKER_Y_COL = 3
MARKER_Z_COL = 4
PREDEFINED_SCALEBARS = [['target 5', 'target 6', 0.500],  # w/ yellow ruler
                        ['target 7', 'target 8', 0.499]]  # w/ color ref


class Scalebar(object):
    """ Scalebar """

    def __init__(self, target1_label, target2_label, length):
        self.target1_label = target1_label
        self.target2_label = target2_label
        self.length = length

    def store_if_matching_scalebar(self, target_label, coords):
        if target_label == self.target1_label:
            self.target1_coords = coords
        elif target_label == self.target2_label:
            self.target2_coords = coords

    def calc_scalefactor_if_targets_present(self):
        if self.target1_coords and self.target2_coords:
            # math.dist only works in Python3.8+
            x1 = float(self.target1_coords[0])
            y1 = float(self.target1_coords[1])
            z1 = float(self.target1_coords[2])
            x2 = float(self.target2_coords[0])
            y2 = float(self.target2_coords[1])
            z2 = float(self.target2_coords[2])
            dist = math.sqrt((x2 - x1)**2 + (y2 - y1)**2 + (z2 - z1)**2)
            return self.length / dist
        else:
            return None


def main(metashape_project_path):
    # Check if CSV file with markers exists
    marker_filename = metashape_project_path.replace('.psx', MARKER_POSTFIX)
    if not os.path.exists(marker_filename):
        sys.exit('Marker file not found: {}'.format(marker_filename))

    # Initialize predefined scalebars
    scalebars = [Scalebar(pred_scalebar[0], pred_scalebar[1], pred_scalebar[2])
                 for pred_scalebar in PREDEFINED_SCALEBARS]

    # Obtain marker labels and 3D coordinates in plot
    marker_file = open(marker_filename, 'r')
    for line in marker_file:
        cols = line.split(',')
        for scalebar in scalebars:
            scalebar.store_if_matching_scalebar(cols[MARKER_LABEL_COL],
                                                [cols[MARKER_X_COL],
                                                 cols[MARKER_Y_COL],
                                                 cols[MARKER_Z_COL]])
    # Obtain scaling factors from scalebars
    sc_factors = []
    for scalebar in scalebars:
        scaling_factor = scalebar.calc_scalefactor_if_targets_present()
        if scaling_factor:
            sc_factors.append(scaling_factor)

    # Calculate the mean (average)
    mean_value = sum(sc_factors) / len(sc_factors)
    variance = sum((x - mean_value) ** 2 for x in sc_factors) / len(sc_factors)
    sterr = math.sqrt(variance) / math.sqrt(len(sc_factors))
    print('{0}: Mean {0} N {1} Var {2} StErr {3}'.format(mean_value,
                                                         len(sc_factors),
                                                         variance,
                                                         sterr))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    # Required arguments
    parser.add_argument('metashape_project_path',
                        metavar='metashape_project_path',
                        help='metashape_project_path')
    args = parser.parse_args()
    main(args.metashape_project_path)
