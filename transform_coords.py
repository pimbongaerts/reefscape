#!/usr/bin/env python
"""

Note: no whitespace allowed in coordinate labels
"""

#import Metashape
import reefscape
import open3d as o3d
import argparse
import numpy

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2022 Pim Bongaerts'
__license__ = 'GPL'

IGNORE_ANNOTATIONS = ['left', 'right', 'X', 'x,y,z']

def get_timepoint_id_from_filename(filename):
    """ Get timepoint from filename """
    return filename.rsplit('/', 1)[1][0:20]

def main(timepoint_id, annotations_filename, trial):
    # Read out metadata for plot and load annotations
    ref_timepoint_id = get_timepoint_id_from_filename(annotations_filename)
    plot = reefscape.Plot(ref_timepoint_id)
    plot.load_annotations(annotations_filename, IGNORE_ANNOTATIONS, trial)
    timepoint = plot.timepoints[timepoint_id]
    if 'csv' in annotations_filename:
        output_filename = annotations_filename.replace('.csv', '_trans_{0}.csv'.format(timepoint_id.rsplit('_',1)[1]))
    elif 'txt' in annotations_filename:
        output_filename = annotations_filename.replace('.txt', '_trans_{0}.csv'.format(timepoint_id.rsplit('_',1)[1]))
    else:
        output_filename = '{0}_trans_{1}.csv'.format(annotations_filename, timepoint_id.rsplit('_',1)[1])
    output_file = open(output_filename, 'w')

    # Read destination point cloud and build KDTree to enable searches
    ply_filepath = timepoint.med_ply_filepath
    print('Reading PLY file {0} ... '.format(ply_filepath))
    pcd = o3d.io.read_point_cloud(ply_filepath)
    print('Build KDTree for point cloud {0} ... '.format(timepoint.id))
    pcd_tree = o3d.geometry.KDTreeFlann(pcd)

    # Transform coordinates and find closest neighbor
    print('Find closest neighbor for each transformed annotation ... ')
    if timepoint.id != ref_timepoint_id:
        transform_ref_to_dest = numpy.linalg.inv(plot.ref_timepoint.transforms[timepoint.id])

    for annotation_id in plot.annotations:
        annotation = plot.annotations[annotation_id]
        if timepoint.id != ref_timepoint_id:
            coords_4vec = plot.annotations[annotation_id].coords + [1]
            coords_transform = numpy.array(numpy.dot(transform_ref_to_dest, coords_4vec)[0:3], dtype=float)
        else:
            coords_transform = plot.annotations[annotation_id].coords
        print('Annotation {0} transformed from {1} to {2}'.format(annotation_id, plot.annotations[annotation_id].coords , coords_transform))
        [k, idx, _] = pcd_tree.search_knn_vector_3d(coords_transform, 2)        
        coords_closest_neighbor = numpy.asarray(pcd.points)[idx[1:], :][0]
        distance = numpy.linalg.norm(plot.annotations[annotation_id].coords - coords_closest_neighbor) * float(timepoint.scale)
        print('Closest neighbor is {0:.1f} mm away: {1}'.format(distance, coords_closest_neighbor))
        plot.annotations[annotation_id].set_alt_coords(coords_closest_neighbor)
        output_file.write('{0},{1},{2},{3},{4},dist:{5:.1f}mm\n'.format(annotation_id, 
                                                 coords_closest_neighbor[0],
                                                 coords_closest_neighbor[1],
                                                 coords_closest_neighbor[2],
                                                 ','.join(plot.annotations[annotation_id].additional_cols),
                                                 distance))
    
    print('Transformed annotations outputted to: {}'.format(output_filename))
    output_file.close()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('timepoint_id', metavar='timepoint_id',
                        help='timepoint ID of target model (e.g. cur_kal_60m_20201214')
    parser.add_argument('annotations_filename', metavar='annotations_filename',
                        help='txt file with annotations (label, x, y, z, other_cols)')
    parser.add_argument('-t', '--trial', action='store_true',
                        help='set flag to run trial for for first 10 annotations')
    args = parser.parse_args()
    main(args.timepoint_id, args.annotations_filename, args.trial)
