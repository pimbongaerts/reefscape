#!/usr/bin/env python
"""
"""
import sys
import os
import json

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2022 Pim Bongaerts'
__license__ = 'GPL'

VERBOSE = True

SERVER_PATH = '/mnt/coral3d/focal_plots/'
FULL_PLY_POSTFIX = '.ply'
SMALL_PLY_POSTFIX = '_dec7M.ply'
MED_PLY_POSTFIX = '_dec50M.ply'

ANN_ID_COL = 0
ANN_X_COL = 1
ANN_Y_COL = 2
ANN_Z_COL = 3
ANN_CAT_COL = 4
ANN_COM_COL = 5

class Plot(object):
    """ Plot metadata (parent of all timepoints) """
    def __init__(self, ref_timepoint_id):
        if self.__check_valid_timepoint_id(ref_timepoint_id):
            self.ref_timepoint_id = ref_timepoint_id    # eg 'cur_sna_40m_20190222'
        else:
            sys.exit('Error: invalid timepoint ID: {} (should be e.g. `cur_sna_40m_20190222`)'.format(ref_timepoint_id))
        self.id = ref_timepoint_id[0:11]             # eg 'cur_sna_40m'
        if VERBOSE: print('Initializing plot {}...'.format(self.id))
        self.path = '{0}{1}/{2}/'.format(SERVER_PATH, self.id[0:7], self.id)
        if not os.path.isdir(self.path):
            sys.exit('Error: plot path {} does not exist...'.format(self.path))
        self.timepoints = self.__get_all_timepoints()
        self.ref_timepoint = self.timepoints[ref_timepoint_id]

    def load_annotations(self, annotations_filename, ignore_list):
        """ Read anotations from txt file """
        self.annotations = {}
        annotations_file = open(annotations_filename, 'r')
        for line in annotations_file:
            if any(flag in line for flag in ignore_list):
                next
            cols = line.rstrip().replace(',', ' ').split()
            self.annotations[cols[0]] = Annotation(cols)
        annotations_file.close()

    def __get_all_timepoints(self):
        """ Get all available timepoints for a particular plot """
        timepoints = {}
        for timepoint_id in os.listdir(self.path):
            timepoint_path = os.path.join(self.path, timepoint_id)
            if os.path.isdir(timepoint_path) and not '@eaDir' in  timepoint_path:
                timepoints[timepoint_id] = Timepoint(timepoint_id, timepoint_path, self.ref_timepoint_id )
        return timepoints

    @staticmethod
    def __check_valid_timepoint_id(timepoint_id):
        return ''.join([timepoint_id[3:4], timepoint_id[7:8], timepoint_id[11:12]]) == '___' and timepoint_id[12:20].isdigit()

class Timepoint(Plot):
    """ Individual timepoints of a plot """
    def __init__(self, timepoint_id, timepoint_path, ref_timepoint_id):
        self.id = timepoint_id
        if VERBOSE: print('Initializing timepoint {}...'.format(self.id))
        self.path = '{}/'.format(timepoint_path)
        self.ref_id = ref_timepoint_id
        self.__read_viscore_metadata()
        self.full_ply_filepath = '{0}{1}{2}'.format(self.path, self.id, FULL_PLY_POSTFIX)
        self.med_ply_filepath = '{0}{1}{2}'.format(self.path, self.id, MED_PLY_POSTFIX)
        self.small_ply_filepath = '{0}{1}{2}'.format(self.path, self.id, SMALL_PLY_POSTFIX)

    def __read_viscore_metadata(self):
        # Set viscore paths
        self.viscore_path = '{0}/{1}.vis/'.format(self.path, self.id)
        self.viscore_subsets_filepath = '{0}{1}.aux/subsets.json'.format(self.viscore_path, 
                                                                         self.id)
        # Read information from subsets.json file
        subsets_json = json.load(open(self.viscore_subsets_filepath))
        subset = self.__get_json_key_for_timepoint(subsets_json, self.id)
        subset_ortho = subset['c']['ortho']

        # Extract ortho information
        self.dd = subset_ortho['dd']
        self.scale_factor = subset_ortho['scale_factor']
        self.r = subset_ortho['vecs']['r']
        self.u = subset_ortho['vecs']['u']
        self.n = subset_ortho['vecs']['n']
        self.c = subset_ortho['vecs']['c']
        self.cc = subset_ortho['vecs']['cc']
        self.cam_up = subset_ortho['vecs']['cam']['up']
        self.cam_eye = subset_ortho['vecs']['cam']['eye']
        self.cam_target = subset_ortho['vecs']['cam']['target']

        # Extract tranformation matrices for all associated timepoints
        self.transforms = {}
        for id in subsets_json['d']:
            if '/' in id:
                formatted_id = id.rsplit('/', 1)[1]
            else:
                formatted_id = id
            self.transforms[formatted_id] = subsets_json['d'][id]['m']

    @staticmethod
    def __get_json_key_for_timepoint(subsets_json, timepoint_id):
        if '{0}/{0}'.format(timepoint_id) in subsets_json['d']:
            return subsets_json['d']['{0}/{0}'.format(timepoint_id)]
        elif timepoint_id in subsets_json['d']:
            return subsets_json['d'][timepoint_id]
        else:
            sys.exit('Error: timepoint {} not found in subsets.json!'.format(timepoint_id))
        

class Annotation(object):
    """ Individual timepoints of a plot """
    def __init__(self, cols):
        self.id = cols[ANN_ID_COL]
        self.coords = [float(cols[ANN_X_COL]), float(cols[ANN_Y_COL]), float(cols[ANN_Z_COL])]
        self.category = cols[ANN_CAT_COL]