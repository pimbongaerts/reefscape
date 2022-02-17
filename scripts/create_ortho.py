#!/usr/bin/env python
"""
Create orthomosaic using the Metashape API.

Usage: 
./metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py
or create an alias:
alias ortho="~/path_to_metashape-pro/metashape.sh -platform offscreen \
                                                  -r ~/reefscape/scripts/create_ortho.py"

"""
import Metashape
import argparse
import os
import numpy as np
import sys

__author__ = 'Pim Bongaerts'
__copyright__ = 'Copyright (C) 2020 Pim Bongaerts'
__license__ = 'GPL'

UPDATE_INTERVAL = 300       # in seconds (= 5min)

def get_project_filepath():
  """ Retrieve current path and use directory name as project name """
  """ ~/plots/seaquarium_40m_2020mar --> ~/plots/seaquarium_40m_2020mar/seaquarium_40m_2020mar.psx """
  return '{0}/{1}.psx'.format(os.getcwd(), os.path.basename(os.getcwd()))

def main():
    project_filepath = get_project_filepath()
    
    # Enable all GPUs
    Metashape.app.gpu_mask = 2 ** (len(Metashape.app.enumGPUDevices())) - 1

    # Open document
    doc = Metashape.Document()
    if os.path.isfile(project_filepath):
        doc.open(project_filepath)  # Open exisiting project
        chunk = doc.chunk
    else:
        sys.exit('Failed to open Metashape project')

    # Create projection for orthomosaic
    projection= Metashape.OrthoProjection()
    projection.type= Metashape.OrthoProjection.Type.Planar

    # Calculate average transform matrix based on all cameras
    camera_transforms = [camera.transform for camera in chunk.cameras]
    camera_transform_mean = np.mean( np.array(camera_transforms), axis=0, dtype=object) 
    projection.matrix = Metashape.Matrix(numpy.reshape(camera_transform_mean, (4,4)))

    # Build orthomosaic
    chunk.buildOrthomosaic(surface_data = Metashape.DataSource.ModelData,
                           blending_mode = Metashape.BlendingMode.MosaicBlending,
                           projection = projection)
    doc.save()

    # Export full orthomosaic (TIFF)
    chunk.exportRaster(path = project_filepath.replace('.psx', 'max_ortho.tif'),
                       image_format = Metashape.ImageFormat.ImageFormatTIFF,
                       source_data = Metashape.DataSource.OrthomosaicData,
                       projection = projection)
    
    # Export orthomosaic (TIFF) with max resolution 32,767 x 32,767
    output_resolution = max(chunk.orthomosaic.width, chunk.orthomosaic.height) * chunk.orthomosaic.resolution / 32767
    chunk.exportRaster(path = project_filepath.replace('.psx', '32K_ortho.tif'),
                       image_format = Metashape.ImageFormat.ImageFormatTIFF,
                       source_data = Metashape.DataSource.OrthomosaicData,
                       projection = projection,
                       resolution = output_resolution)
    
    # Export orthomosaic (PNG) with max resolution 10,000 x 10,000
    output_resolution = max(chunk.orthomosaic.width, chunk.orthomosaic.height) * chunk.orthomosaic.resolution / 10000
    chunk.exportRaster(path = project_filepath.replace('.psx', '10K_ortho.png'),
                       image_format = Metashape.ImageFormat.ImageFormatPNG,
                       source_data = Metashape.DataSource.OrthomosaicData,
                       projection = projection,
                       resolution = output_resolution)

    # Export orthomosaic (PNG) with max resolution 2,000 x 2,000
    output_resolution = max(chunk.orthomosaic.width, chunk.orthomosaic.height) * chunk.orthomosaic.resolution / 2000
    chunk.exportRaster(path = project_filepath.replace('.psx', '02K_ortho.png'),
                       image_format = Metashape.ImageFormat.ImageFormatPNG,
                       source_data = Metashape.DataSource.OrthomosaicData,
                       projection = projection,
                       resolution = output_resolution)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    args = parser.parse_args()
    main()