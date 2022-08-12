#!/usr/bin/env python
"""

"""
import reefscape
import sys
import numpy as np
import open3d as o3d
import open3d.visualization.gui as gui
import argparse
import copy
import json
import os
import shutil
import subprocess
import time
from fpdf import FPDF
from multiprocessing import Pool, Lock
from functools import partial

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2022 Pim Bongaerts'
__license__ = 'GPL'

IGNORE_ANNOTATIONS = ['left', 'right', 'X', 'p,x,y,z,label,meta']
SEARCH_RADIUS = 0.4
AXIS_LENGTH = 0.2
THREADS = 32


def get_timepoint_id_from_filename(filename):
    """ Get timepoint from filename """
    return filename.rsplit('/', 1)[1][0:20]

def capture_pointcloud(pcd, ls, output_filename):
    # Visualize Point Cloud
    vis = o3d.visualization.Visualizer()
    vis.create_window(width = 1000, height = 1000)
    vis.add_geometry(pcd)
    vis.add_geometry(ls)
    vis.update_geometry(pcd)
    ctr = vis.get_view_control()
    ctr.set_zoom(0.8)
    vis.poll_events()
    vis.update_renderer()
    vis.capture_screen_image(output_filename.replace('.png', '_zoomout.png'))
    
    ctr = vis.get_view_control()
    ctr.set_zoom(0.4)
    vis.poll_events()
    vis.update_renderer()
    vis.capture_screen_image(output_filename.replace('.png', '_zoomin.png'))
    vis.destroy_window()

def get_coral_pointcloud(pcd, pcd_tree, annotation, scaled_search_radius):
    """ Extract points within search radius """
    [k, idx, _] = pcd_tree.search_radius_vector_3d(annotation.coords, 
                                                   scaled_search_radius)
    coral_pcd = o3d.geometry.PointCloud()
    coral_pcd.points = o3d.utility.Vector3dVector(np.asarray(pcd.points)[idx[1:], :])
    coral_pcd.colors = o3d.utility.Vector3dVector(np.asarray(pcd.colors)[idx[1:], :])
    return coral_pcd

def get_axes_lineset(annotation, ref_timepoint):
    """ Extract points within search radius """
    # Create a size reference around annotation point
    v_dist = np.sqrt(ref_timepoint.dd[0]**2 + ref_timepoint.dd[1]**2 + ref_timepoint.dd[2]**2)
    up_vector = np.array(ref_timepoint.dd[0:3]) / v_dist * AXIS_LENGTH / ref_timepoint.scale_factor 
    x_axis = np.array([1, 0, 0]) * AXIS_LENGTH / ref_timepoint.scale_factor 
    y_axis = np.array([0, 1, 0]) * AXIS_LENGTH / ref_timepoint.scale_factor 
    z_axis = np.array([0, 0, 1]) * AXIS_LENGTH / ref_timepoint.scale_factor 
    #offset_annotation = np.array(annotations[annotation_id] + v_translation)
    points = [annotation.coords, 
              annotation.coords + up_vector,
              annotation.coords + x_axis,
              annotation.coords + y_axis,
              annotation.coords - z_axis]
    lines = [[0, 1], [0, 2], [0, 3], [0, 4]]
    colors = [[1, 0, 0], [0, 0, 0], [0, 1, 0], [0, 0, 1]]
    axes_ls = o3d.geometry.LineSet()
    axes_ls.points = o3d.utility.Vector3dVector(points)
    axes_ls.lines = o3d.utility.Vector2iVector(lines)
    axes_ls.colors = o3d.utility.Vector3dVector(colors)
    return axes_ls

def capture_pointcloud(pcd, ls, output_filename):
    # Visualize Point Cloud
    vis = o3d.visualization.Visualizer()
    vis.create_window(width = 1000, height = 1000)
    vis.add_geometry(pcd)
    vis.add_geometry(ls)
    vis.update_geometry(pcd)
    ctr = vis.get_view_control()
    ctr.set_zoom(0.8)
    vis.poll_events()
    vis.update_renderer()
    vis.capture_screen_image(output_filename.replace('.png', '_zoomout.png'))
    
    ctr = vis.get_view_control()
    ctr.set_zoom(0.4)
    vis.poll_events()
    vis.update_renderer()
    vis.capture_screen_image(output_filename.replace('.png', '_zoomin.png'))
    vis.destroy_window()

def compile_pdf(plot, temp_folder, annotations_filename):
    """ """
    # Combine timepoints into single images
    for annotation_id in plot.annotations:
        print('Saving compilation image for: {0}...'.format(annotation_id))
        convert_cmd = 'convert {0}{1}_*_zoomout.png +append {2}{1}_zoomout.png'.format(temp_folder, annotation_id, temp_folder)
        process = subprocess.Popen(convert_cmd, shell=True)
        process.wait()
        convert_cmd = 'convert {0}{1}_*_zoomin.png +append {2}{1}_zoomin.png'.format(temp_folder, annotation_id, temp_folder)
        process = subprocess.Popen(convert_cmd, shell=True)
        process.wait()

    # PDF settings
    pdf = FPDF(orientation="L", unit="mm", format="A4")
    pdf.set_font('helvetica', 'b', size=10)
    pdf.set_fill_color(100, 100, 100)
    # Output pages
    counter = 1
    for annotation_id in plot.annotations:
        annotation = plot.annotations[annotation_id]
        if (counter % 2) != 0:
            pdf.add_page()
            pdf.set_y(2)
            pdf.cell(0, 5, txt='{0} {1}'.format(annotation_id, annotation.category), border=1, fill=True)
            pdf.set_y(10)
            for timepoint in plot.timepoints:
                pdf.cell(40, 5, txt='{0}-{1}'.format(timepoint[12:16], timepoint[16:18]), align='L')
            pdf.image('{0}{1}_zoomout.png'.format(temp_folder,annotation_id), x = 5, y = 14, w = 287)
            pdf.image('{0}{1}_zoomin.png'.format(temp_folder,annotation_id), x = 5, y = 60, w = 287)
        else:
            pdf.set_y(110)
            pdf.cell(0, 5, txt='{0} {1}'.format(annotation_id, annotation.category), border=1, fill=True)
            pdf.set_y(120)
            for timepoint in plot.timepoints:
                pdf.cell(40, 5, txt='{0}-{1}'.format(timepoint[12:16], timepoint[16:18]), align='L')
            pdf.image('{0}{1}_zoomout.png'.format(temp_folder,annotation_id), x = 5, y = 125, w = 287)
            pdf.image('{0}{1}_zoomin.png'.format(temp_folder,annotation_id), x = 5, y = 160, w = 287)
        counter += 1
    pdf.output('{}'.format(annotations_filename.replace('.csv', '.pdf')))    

def extract_corals_from_timepoint(plot, timepoint, temp_folder):
    """ """
    print('Reading PLY file {0} ...'.format(timepoint.med_ply_filepath))
    pcd = o3d.io.read_point_cloud(timepoint.med_ply_filepath)
    pcd.transform(plot.ref_timepoint.transforms[timepoint.id])
    print('Build KDTree for point cloud {0} ...'.format(timepoint.id))
    pcd_tree = o3d.geometry.KDTreeFlann(pcd)
    
    print('Extracting spheres around annotations ...')    
    scaled_search_radius = SEARCH_RADIUS / plot.ref_timepoint.scale_factor
    for annotation_id in plot.annotations:
        annotation = plot.annotations[annotation_id]
        coral_pcd = get_coral_pointcloud(pcd, pcd_tree, annotation, scaled_search_radius)
        axes_ls = get_axes_lineset(annotation, plot.ref_timepoint)

        output_filename = '{0}{1}_{2}.png'.format(temp_folder, annotation.id, timepoint.id)
        capture_pointcloud(coral_pcd, axes_ls, output_filename)


def main(annotations_filename):
    temp_folder = '/home/deepcat/temp/'
    ref_timepoint_id = get_timepoint_id_from_filename(annotations_filename)
    plot = reefscape.Plot(ref_timepoint_id)
    plot.load_annotations(annotations_filename, IGNORE_ANNOTATIONS)

    func_args = []
    for plot_id in plot.timepoints:
        func_args.append([plot, plot.timepoints[plot_id], temp_folder])

    with Pool() as pool:
        pool.starmap(extract_corals_from_timepoint, func_args)   

    compile_pdf(plot, temp_folder, annotations_filename)

    clear_cmd = 'rm {0}*.png'.format(temp_folder)
    process = subprocess.Popen(clear_cmd, shell=True)
    process.wait()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('annotations_filename', metavar='annotations_filename',
                        help='txt file with annotations (label, x, y, z)')
    args = parser.parse_args()
    main(args.annotations_filename)