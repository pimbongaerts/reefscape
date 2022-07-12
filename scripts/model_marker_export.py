#!/usr/bin/env python
"""
"""
import argparse
import os
import glob
import json
import Metashape

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


        marker_backup_filepath = '{0}/{1}_markers_backup.csv'.format(path, short_name)
        marker_filepath = '{0}/{1}_markers.csv'.format(path, short_name)

        if os.path.isfile(project_filepath):
            doc.open(project_filepath, read_only=True)  # Open project as read-only
            doc.read_only = False                       # Turn off read-only in case it applies
            doc = Metashape.Document()
            doc.open(project_filepath, read_only=False) # Open project with writing access
            chunk = doc.chunk
            if chunk:
                # Create backup of current markers and remove from project
                if len(doc.chunk.makers) > 0:
                    self.__export_current_makers(doc, arker_backup_filepath)
                    doc.chunk.remove(doc.chunk.markers)
                # Find markers (circ 12-bit, tol 20, max 5)
                doc.chunk.detectMarkers(target_type=CircularTarget12bit, 
                                        tolerance=20, 
                                        filter_mask=False, 
                                        inverted=False, 
                                        noparity=False, 
                                        maximum_residual=5, 
                                        minimum_size=0, 
                                        minimum_dist=5)
                if len(doc.chunk.makers) > 0:
                    self.__export_current_makers(doc, marker_filepath)
            sys.exit()

    def __export_current_makers(self, doc, filepath):
        """ Get viscore project info from subsets.json file """
        marker_file = open(filepath, 'w')
        for i in doc.chunk.markers:
            marker = doc.chunk.markers[i]
            marker_file.write('{0},{1},{2},{3},{4}\n'.format(marker.key, 
                                                             marker.label, 
                                                             marker.position[0], 
                                                             marker.position[1], 
                                                             marker.position[2]))
        marker_file.close()

def main():
    focal_plots = Focal_plots(focal_plots_path)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    args = parser.parse_args()
    main()