#!/usr/bin/env python
"""
"""
import argparse
import os
import glob
import json

focal_plots_path = "/mnt/coral3d/focal_plots/"
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
        #print("├── {}".format(short_name))
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
        #print("│   ├──{}".format(short_name))
        for timepoint_folder in os.listdir(self.path):
            timepoint_path = os.path.join(self.path, timepoint_folder)
            if os.path.isdir(timepoint_path) and not '@eaDir' in  timepoint_path:
                self.timepoints[timepoint_folder] = Timepoint(timepoint_folder, 
                                                              timepoint_path)

class Timepoint(object):
    """  """
    def __init__(self, short_name, path):
        self.short_name = short_name
        project_filepath = '{0}/{1}.psx'.format(path, short_name)

        if os.path.isfile(project_filepath):
            doc = Metashape.Document()
            doc.open(project_filepath)  # Open exisiting project
            chunk = doc.chunk

            cameras_not_aligned = []
            for camera in chunk.cameras:
                if not camera.transform:
                    cameras_not_aligned.append(camera)
            print('{0},{1},{2}'.format(short_name, len(cameras_not_aligned), len(chunk.cameras)))
            doc.close()
        else:
            print('{0},NA,NA',format(short_name))

def main():
    focal_plots = Focal_plots(focal_plots_path)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    args = parser.parse_args()
    main()