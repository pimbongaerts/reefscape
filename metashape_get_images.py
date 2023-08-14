#!/usr/bin/env python
"""

Note: no whitespace allowed in coordinate labels
Requires numpy and open-cv to be installed for Metashape's Python
"""

import Metashape
import argparse
import math
import numpy as np
import os
import shutil
import sys
import subprocess
import cv2
from datetime import datetime

ANN_SQ_SIZE = 20
NO_IMG_PATH = '/home/deepcat/reefscape/scripts/no_img.jpg'

class Annotation(object):
    """ Annotation point  """
    def __init__(self, line_no, label, coords, category, other_cols):
        self.line_no = line_no
        self.label = label
        self.coords = coords
        self.coords_formatted = 'x {0}, y {1}, z {2}'.format(*self.coords)
        self.other_cols = other_cols
        self.category = category
        self.marker = None
        self.camprojections = []

    def get_camera_projections(self, chunk, transform, scaling_factor):
        # Create temporary Annotation marker (visible = true important)
        self.marker = chunk.addMarker(transform.mulp(self.coords), 
                                      visibility = True)

        # Create list of camera projections for Annotation
        for projection in self.marker.projections.items():
            self.camprojections.append(CameraProjection(self, projection[0], 
                                                        projection[1], 
                                                        scaling_factor))

        # Remove temporary marker
        chunk.remove(self.marker)

    def output_cropped_images(self, output_folder, max_images, max_distance, 
                              min_sharpness, crop_size, img_size,
                              split_categories, omit_overlay):
        # Check if there are camera projections
        if not self.camprojections:
            print('Warning: no cameras found for {0} - {1}'.format(self.line_no, self.label))
            return

        # Sort images by distance from annotation point to camera center
        sorted_camprojections = sorted(self.camprojections, 
                                       key=lambda camprojection: camprojection.dist)

        image_no = 1
        for camprojection in sorted_camprojections:
            if (camprojection.altitude > max_distance or 
                not camprojection.is_clear_from_image_edge(crop_size)):
                continue

            if split_categories and split_categories != {''}:
                img_output_folder = os.path.join(output_folder, self.category)
            else:
                img_output_folder = output_folder

            camprojection.output_crop_image(img_output_folder, image_no, 
                                            crop_size, img_size, omit_overlay)

            if camprojection.crop_file:
                if min_sharpness:
                    camprojection.crop_file.calc_image_sharpness()
                    #print(self.label, camprojection.camera.photo.path, camprojection.dist, 
                    #      camprojection.crop_file.laplacian_var, camprojection.crop_file.avg_gradient_magnitude)
                    if camprojection.crop_file.avg_gradient_magnitude < min_sharpness:
                        os.remove(camprojection.crop_file.filepath)
                    else:
                        image_no +=1
                else:
                    #print(self.label, camprojection.camera.photo.path, camprojection.dist)
                    image_no +=1 
            if max_images and image_no > max_images:
                break

class CameraProjection(object):
    """ Camera Projection for Annotation point  """
    def __init__(self, parent, camera, marker_projection, scaling_factor):
        self.parent = parent
        self.camera = camera
        self.marker_projection = marker_projection
        self.img_x = marker_projection.coord.x
        self.img_y = marker_projection.coord.y
        self.img_w = camera.image().width
        self.img_h = camera.image().height
        self.dist = self.__get_distance_from_camera_center() * scaling_factor
        self.altitude = self.__get_camera_altitude() * scaling_factor

    def output_crop_image(self, output_folder, image_no, crop_size, img_size, 
                          omit_overlay):
        """  """
        # Set crop box position and size
        box_x = max(int(self.img_x) - (ANN_SQ_SIZE / 2), 0)
        box_y = max(int(self.img_y) - (ANN_SQ_SIZE / 2), 0)
        crop_x = max(int(self.img_x) - (crop_size / 2), 0)
        crop_y = max(int(self.img_y) - (crop_size / 2), 0)
        
        # Define filename
        crop_filepath = '{0}/{1:04d}_{2}_{3:03d}_{4}_{5}'.format(output_folder, self.parent.line_no, self.parent.label,
                                                                 image_no, self.parent.category, os.path.basename(self.camera.photo.path))

        if not img_size:
            img_size = crop_size

        # Create cropped image using ffmpeg
        if omit_overlay:
            ffmpeg_cmd = (
                'ffmpeg -i {0} -hide_banner -loglevel panic -vf '
                '"crop={1}:{1}:{2}:{3}, scale=-1:{4}" {5}'
            ).format(
                self.camera.photo.path, crop_size, crop_x, crop_y, img_size, crop_filepath
            )  
        else:
            # Set image label text
            img_lbl1 = 'l{0} - {1} - {2} \n'.format(self.parent.line_no, self.parent.label, self.parent.coords_formatted)
            img_lbl2 = '{0} orig {1} coord x {2:.1f} y {3:.1f} dist {4:.1f} alt {5:.3f}'.format(self.parent.category, self.camera.label, self.img_x, 
                                                                                self.img_y, self.dist, self.altitude)
            ffmpeg_cmd = (
                'ffmpeg -i {0} -hide_banner -loglevel panic -vf '
                '"drawbox={1}:{2}:{3}:{3}:color=red@0.5:t=fill,'
                'crop={4}:{4}:{5}:{6}, scale=-1:{7}'
                'drawtext=fontfile=/Library/Fonts/Arial.ttf: text=\'{8}\':'
                'x=50: y=h-(2*lh): fontcolor=black: fontsize=20: box=1: boxcolor=gray: boxborderw=5" '
                '{9}'
            ).format(
                self.camera.photo.path, box_x, box_y,
                ANN_SQ_SIZE, crop_size, crop_x, crop_y, img_size,
                img_lbl1 + img_lbl2, crop_filepath
            )
        process = subprocess.Popen(ffmpeg_cmd, shell=True)
        process.wait()

        # Check if image file actually got created
        if os.path.exists(crop_filepath):
            self.crop_file = CropImageFile(self, crop_filepath)
        else:
            print('Warning: file {0] could not be generated'.format(crop_filepath))

    def is_clear_from_image_edge(self, crop_size):
        """ Determines whether the annotation point is at least (crop size / 2) away from image border """
        return self.img_x + (crop_size / 2) <= self.img_w and \
               self.img_x - (crop_size / 2) > 0 and \
               self.img_y + (crop_size / 2) <= self.img_h and \
               self.img_y - (crop_size / 2) > 0 

    def __get_distance_from_camera_center(self):
        """ Calculate 2D distance from annotation point (on image) to center of camera/image """
        return math.sqrt(abs((self.img_w / 2) - self.img_x) ** 2 + abs((self.img_h / 2) - self.img_y) ** 2)

    def __get_camera_altitude(self):
        """ Calculate 3D distance from annotation point to center of camera position """
        return math.dist(self.parent.coords, self.camera.center) # * float(scale)

class CropImageFile(object):
    """ Cropped Image for Camera Projection """
    def __init__(self, parent, filepath):
        self.parent = parent
        self.filepath = filepath

    def calc_image_sharpness(self):
        """ Calculate sharpness of cropped image """
        image = cv2.imread(self.filepath)
        gray_image = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

        # Compute the variance of Laplacian
        self.laplacian_var = cv2.Laplacian(gray_image, cv2.CV_64F).var()

        # Calculate the average gradient magnitude using Sobel operator
        gradient_x = cv2.Sobel(gray_image, cv2.CV_64F, 1, 0, ksize=3)
        gradient_y = cv2.Sobel(gray_image, cv2.CV_64F, 0, 1, ksize=3)
        gradient_magnitude = np.sqrt(gradient_x ** 2 + gradient_y ** 2)
        self.avg_gradient_magnitude = np.mean(gradient_magnitude)

def get_annotations(annotations_filename, category_column, max_annotations):
    """ Read annotations from tsv/csv file with columns: label,x,y,z,* """
    annotations = []
    annotations_file = open(annotations_filename, 'r')
    line_no = 1
    for line in annotations_file:
        if line_no ==1 and 'x,y,z' in line:
            line_no += 1
            continue
        clean_line = line.replace(' #', '').replace('/', '_').replace(',', ' ')
        cols = clean_line.split()
        coords = Metashape.Vector((float(cols[1]), float(cols[2]), 
                                   float(cols[3])))
        category = cols[category_column] if category_column else ''
        annotations.append(Annotation(line_no, cols[0], coords, 
                                      category, cols[4:]))
        line_no += 1
        if max_annotations and line_no > max_annotations: break
    annotations_file.close()
    return annotations

def open_metashape_project(metashape_project_path):
    # Enable all GPUs
    Metashape.app.gpu_mask = 2 ** (len(Metashape.app.enumGPUDevices())) - 1
    # Open project
    doc = Metashape.Document()
    if os.path.isfile(metashape_project_path):
        doc.open(metashape_project_path)
    else:
        sys.exit("Could not access {0}".format(metashape_project_path))
    return doc

def create_output_folders(output_folder, annotations, split_categories):
    """ Create output folder(s) for cropped images """
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)
    # Create category output folders if split_categories flag is set
    if split_categories and split_categories != {''}:
        categories = set(annotation.category for annotation in annotations)
        for category in categories:
            category_folder = os.path.join(output_folder, category)
            if not os.path.exists(category_folder):
                os.makedirs(category_folder)

def create_movie_from_images(output_folder, annotations_filename):
    """ """
    # Create movie from images
    movie_filename = os.path.splitext(os.path.basename(annotations_filename))[0]
    ffmpeg_cmd = (
        'ffmpeg -framerate 5 -hide_banner -loglevel error '
        '-pattern_type glob -i "{0}/*.jpg" '
        '-pix_fmt yuv420p {0}/{1}.mp4'
    ).format(output_folder, movie_filename)
    process = subprocess.Popen(ffmpeg_cmd, shell=True)
    process.wait()

def main(metashape_project_path, annotations_filename, output_folder,
         scaling_factor, category_column, max_annotations, max_images, 
         max_distance, min_sharpness, crop_size, img_size,
         split_categories, omit_overlay, movie):

    # Open metashape project and select primary chunk
    doc = open_metashape_project(metashape_project_path)
    chunk = doc.chunk

    # Set transformation matrix (to transform annotation coords to pointcloud coords)
    transform = chunk.transform.matrix.inv() # no transformation

    # Get list of 3D annotations from file
    annotations = get_annotations(annotations_filename, category_column, 
                                  max_annotations)

    # Create output folders
    create_output_folders(output_folder, annotations, split_categories)

    # For each Annotation create a list of camera projections
    for annotation in annotations:
        # Create temporary Metashape marker and get camera projections
        annotation.get_camera_projections(chunk, transform, scaling_factor)

        # Output cropped image for each camera projection
        annotation.output_cropped_images(output_folder, max_images, 
                                         max_distance, min_sharpness,
                                         crop_size, img_size,
                                         split_categories, omit_overlay)

    if movie:
        create_movie_from_images(output_folder, annotations_filename)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    # Required arguments
    parser.add_argument('metashape_project_path', metavar='metashape_project_path',
                        help='metashape_project_path')
    parser.add_argument('annotations_filename', metavar='annotations_filename',
                        help='Text file with 4 columns: label, x, y, z')
    parser.add_argument('output_folder', metavar='output_folder',
                        help='Output folder (will be created if does not exist)')

    # Optional input arguments
    parser.add_argument('--scaling_factor', '-f', type=float, default=1.0, help='Scaling factor to convert altitude to metres (default = 1.0)')
    parser.add_argument('--category_column', '-c', type=int, default=6, help='Category /.category column (0-based counting; default = 6)')

    # Optional output arguments
    parser.add_argument('--max_annotations', '-a', type=int, help='Optional maximum number of annotations to process')
    parser.add_argument('--max_images', '-i', type=int, help='Optional maximum number of cameras to output per annotation')
    parser.add_argument('--max_distance', '-d', type=float, help='Optional maximum distance of camera to annotation threshold (in metres as float)')
    parser.add_argument('--min_sharpness', '-x', type=float, help='Optional minimum sharpness threshold (measured as average gradient magnitude)')
    parser.add_argument('--crop_size', type=int, default=1000, help='Optional crop size (default = 1000px)')
    parser.add_argument('--img_size', type=int, help='Optional image resize (default is crop_size)')

    
    # Optional output argument flags
    parser.add_argument('--split_categories', '-s', action="store_true", help="Optional flag to split image categories into different folders (True if provided)")
    parser.add_argument('--omit_overlay', '-o', action="store_true", help="Optional flag to omit image overlay with metadata (True if provided)")
    parser.add_argument('--movie', '-m', action="store_true", help="Optional flag to create movie instead of images")

    args = parser.parse_args()
    main(args.metashape_project_path, args.annotations_filename, 
         args.output_folder,
         args.scaling_factor, args.category_column,
         args.max_annotations, args.max_images,
         args.max_distance, args.min_sharpness,
         args.crop_size, args.img_size,
         args.split_categories, args.omit_overlay, args.movie)
