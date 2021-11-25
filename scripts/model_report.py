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
        self.ortho = False
        self.ply = False
        self.cams = False
        self.meta = False
        self.vis = False
        assets = ""
        for modelpart_file in os.listdir(self.path):
            modelpart_path = os.path.join(self.path, modelpart_file)
            if (os.path.isdir(modelpart_path) & modelpart_file.endswith('.raw')):
                self.raw_files = len(glob.glob(modelpart_path + '/*.CR2'))
                assets += "CR2:{0:4d}".format(self.raw_files)
            elif (os.path.isdir(modelpart_path) & modelpart_file.endswith('.photos')):
                self.jpg_files = len(glob.glob(modelpart_path + '/*.jpg'))
                assets += "JPG:{0:4d}".format(self.jpg_files)
            elif modelpart_file.endswith('.psx'):
                self.psx = True
                assets += "PSX "
            elif modelpart_file.endswith('.ply'):
                self.ply = True
                assets += "PLY "
            elif modelpart_file.endswith('.cams.xml'):
                self.cams = True
                assets += "CAM "
            elif modelpart_file.endswith('.meta.json'):
                self.meta = True
                assets += "MET "
            elif (os.path.isdir(modelpart_path) & modelpart_file.endswith('.ortho')):
                self.ortho = True
                assets += "ORTHO "
            elif (os.path.isdir(modelpart_path) & modelpart_file.endswith('.vis')):
                self.vis = True
                assets += "VIS "
                assets += self.__get_viscore_status(modelpart_path)
            elif (os.path.isdir(modelpart_path) & modelpart_file.endswith('.markers')):
                self.markers = len(glob.glob(modelpart_path + '/*.jpg'))
                assets += "REF_IMG:{0:2d} ".format(self.markers)

        print("│   │   ├──{:28s} {}".format(short_name, assets))
        
    def __get_viscore_status(self, viscore_path):
        """ Get viscore project info from subsets.json file """
        aux_filepath = '{0}/{1}.aux/subsets.json'.format(viscore_path, self.short_name)
        viscore_assets = ''
        if os.path.exists(aux_filepath):
            subsets = json.load(open(aux_filepath))
            if '{0}/{0}'.format(self.short_name) in subsets['d']:
                subsets_model = subsets['d']['{0}/{0}'.format(self.short_name)]['c']
            elif self.short_name in subsets['d']:
                subsets_model = subsets['d'][self.short_name]['c']
            else:
                return
            # Determine number of scalers
            try:
                scalers = len(subsets_model["scaler"]["s"])
                viscore_assets += "SCALE:{0:2d} ".format(scalers)
            except:
                pass
            # Determine number of orientation markers
            try:
                orienters = len(subsets_model["ortho"]["ref"])
                viscore_assets += "REF:{0:2d} ".format(orienters)
            except:
                pass
        return viscore_assets


def main():
    print('```shell')
    focal_plots = Focal_plots(focal_plots_path)
    print('```')

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    args = parser.parse_args()
    main()
