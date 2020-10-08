#!/usr/bin/env python
"""
"""
import argparse
import os
import glob

focal_plots_path = "/home/deepcat/mounts/coral3d/focal_plots/"
PLY = "PLY"
NO_PLY = ""

class Focal_plots(object):
    """  """
    def __init__(self, path):
        self.path = path
        self.locations = {}
        for location_folder in os.listdir(self.path):
            location_path = os.path.join(self.path, location_folder)
            if os.path.isdir(location_path):
                self.locations[location_folder] = Location(location_folder, 
                                                           location_path)            

class Location(object):
    """  """
    def __init__(self, short_name, path):
        self.short_name = short_name
        self.path = path
        self.plots = {}
        print("├── {}".format(short_name))
        for plot_folder in os.listdir(self.path):
            plot_path = os.path.join(self.path, plot_folder)
            if os.path.isdir(plot_path):
                self.plots[plot_folder] = Plot(plot_folder, plot_path)

class Plot(object):
    """  """
    def __init__(self, short_name, path):
        self.short_name = short_name
        self.path = path
        self.timepoints = {}
        print("│   ├──{}".format(short_name))
        for timepoint_folder in os.listdir(self.path):
            timepoint_path = os.path.join(self.path, timepoint_folder)
            if os.path.isdir(timepoint_path):
                self.timepoints[timepoint_folder] = Timepoint(timepoint_folder, 
                                                              timepoint_path)

class Timepoint(object):
    """  """
    def __init__(self, short_name, path):
        self.short_name = short_name
        self.path = path
        self.raw_files = 0
        self.jpg_files = 0
        self.psx = False
        self.ply = False
        self.cams = False
        self.meta = False
        p_files = ""
        for modelpart_file in os.listdir(self.path):
            modelpart_path = os.path.join(self.path, modelpart_file)
            if (os.path.isdir(modelpart_path) & modelpart_file.endswith('.raw')):
                self.raw_files = len(glob.glob(modelpart_path + '/*.CR2'))
            elif (os.path.isdir(modelpart_path) & modelpart_file.endswith('.photos')):
                self.jpg_files = len(glob.glob(modelpart_path + '/*.jpeg'))
            elif modelpart_file.endswith('.psx'):
                self.psx = True
                p_files += "PSX   "
            elif modelpart_file.endswith('.ply'):
                self.ply = True
                p_files += "PLY   "
            elif modelpart_file.endswith('.cams.xml'):
                self.cams = True
                p_files += "CAM   "
            elif modelpart_file.endswith('.meta.json'):
                self.meta = True
                p_files += "MET   "
        print("│   │   ├──{:28s} CR2:{:4d} JPG: {:4d}   {}".format(short_name, 
                                                               self.raw_files,
                                                               self.jpg_files,
                                                               p_files))


def main():
    focal_plots = Focal_plots(focal_plots_path)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    args = parser.parse_args()
    main()
