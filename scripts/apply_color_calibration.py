#!/usr/bin/env python
"""

"""
import reefscape
import argparse
import numpy as np
import open3d as o3d

def main(timepoint_id):
    # Read out metadata for plot and load annotations
    #ref_timepoint_id = get_timepoint_id_from_filename(annotations_filename)
    #plot = reefscape.Plot(ref_timepoint_id)

    #ply_filepath = timepoint.med_ply_filepath
    ply_filepath = '/Users/pbongaerts/Dropbox/Data/open3d/data/cur_sna_40m_20191110_dec7M.ply'

    print('Reading PLY file {0} ... '.format(ply_filepath))
    pcd = o3d.io.read_point_cloud(ply_filepath)
    print('Build KDTree for point cloud {0} ... '.format(ply_filepath))
    pcd_tree = o3d.geometry.KDTreeFlann(pcd)

    marker1 = np.array([9.055506, -97.358528, 28.348713])
    marker2 = np.array([12.270713, -94.958458, 27.198128])
    scalebar_length= 49.9

    model_distance = np.linalg.norm(marker1 -marker2) 
    scaling_factor = model_distance / scalebar_length

    
    scalebar_centroid = (marker1 + marker2) / 2
    scaled_search_radius = (scalebar_length / 2) * scaling_factor

    print('Model distance {0} and scaling factor {1}'.format(model_distance, scaling_factor))
    print('Centroid {0} and search {1}'.format(scalebar_centroid, scaled_search_radius))

    [k, idx, _] = pcd_tree.search_radius_vector_3d(scalebar_centroid, scaled_search_radius)
    scalebar_pcd = o3d.geometry.PointCloud()
    scalebar_pcd.points = o3d.utility.Vector3dVector(np.asarray(pcd.points)[idx[1:], :])
    scalebar_pcd.colors = o3d.utility.Vector3dVector(np.asarray(pcd.colors)[idx[1:], :])

    plane_model, inliers = scalebar_pcd.segment_plane(distance_threshold=0.05,
                                             ransac_n=3,
                                             num_iterations=1000)
    [a, b, c, d] = plane_model
    print(f"Plane equation: {a:.2f}x + {b:.2f}y + {c:.2f}z + {d:.2f} = 0")

    inlier_cloud = scalebar_pcd.select_by_index(inliers)
    #inlier_cloud.paint_uniform_color([1.0, 0, 0])
    outlier_cloud = scalebar_pcd.select_by_index(inliers, invert=True)

    plane_normal_end = scalebar_centroid + [a,b,c]
    marker_normal = marker1 - marker2
    marker_normal_norm = marker_normal / np.linalg.norm(marker_normal)
    plane_perpen =  np.cross(np.asarray([a,b,c]), marker_normal)
    plane_perpen_norm = plane_perpen / np.linalg.norm(plane_perpen)
    plane_perpen_end = scalebar_centroid + plane_perpen_norm

    points = [marker1, marker2, scalebar_centroid, plane_normal_end, plane_perpen_end]
    lines = [[0, 1], [2, 3], [2,4]]
    colors = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
    axes_ls = o3d.geometry.LineSet()
    axes_ls.points = o3d.utility.Vector3dVector(points)
    axes_ls.lines = o3d.utility.Vector2iVector(lines)
    axes_ls.colors = o3d.utility.Vector3dVector(colors)

    grid_points = [scalebar_centroid]
    grid_lines = []
    grid_colors = []
    current_coord = scalebar_centroid
    for i in range(0, 5):
        current_coord = current_coord + marker_normal_norm
        current_coord_offset = current_coord + plane_perpen_norm
        grid_points.append(current_coord)
        grid_lines.append([0, i])
        grid_colors.append([1, 0, 0])
    print(grid_points)
    print(grid_lines)
    print(grid_colors)
    grid_ls = o3d.geometry.LineSet()
    grid_ls.points = o3d.utility.Vector3dVector(grid_points)
    grid_ls.lines = o3d.utility.Vector2iVector(grid_lines)
    grid_ls.colors = o3d.utility.Vector3dVector(grid_colors)

    o3d.visualization.draw_geometries([inlier_cloud, grid_ls])

    #https://blog.francium.tech/using-machine-learning-for-color-calibration-with-a-color-checker-d9f0895eafdb

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('timepoint_id', metavar='timepoint_id',
                        help='timepoint ID of model for which colors will be corrected')
    args = parser.parse_args()
    main(args.timepoint_id)