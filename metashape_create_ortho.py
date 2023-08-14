#!/usr/bin/env python
"""
Create orthomosaic using the Metashape 2.0 API.

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

def get_ortho_filepath():
  """ Retrieve current path and use directory name as project name """
  return '{0}/{1}.orthom'.format(os.getcwd(), os.path.basename(os.getcwd()))

def get_ortho_basename():
  """ Retrieve current path and use directory name as project name """
  return '{0}/{1}.orthom/{1}'.format(os.getcwd(), os.path.basename(os.getcwd()))

def main(skip_build):
    # Enable all GPUs
    Metashape.app.gpu_mask = 2 ** (len(Metashape.app.enumGPUDevices())) - 1

    # Open document
    doc = Metashape.Document()
    project_filepath = get_project_filepath()
    if os.path.isfile(project_filepath):
        doc.open(project_filepath, read_only=True)  # Open project as read-only
        doc.read_only = False                       # Turn off read-only in case it applies
        doc = Metashape.Document()
        doc.open(project_filepath, read_only=False) # Open project with writing access
        chunk = doc.chunk
    else:
        sys.exit('Failed to open Metashape project')

    # Calculate average transform matrix based on all aligned cameras
    # and create projection for orthomosaic
    projection = Metashape.OrthoProjection()
    projection.type = Metashape.OrthoProjection.Type.Planar
    camera_transforms = [camera.transform for camera in chunk.cameras if camera.transform]
    camera_transform_mean = np.mean(np.array(camera_transforms), axis=0)
    projection.matrix = Metashape.Matrix(np.reshape(camera_transform_mean, (4,4)))

    if not skip_build:
      # Build model (medium face count)
      chunk.buildModel(surface_type = Metashape.Arbitrary, 
                       source_data = Metashape.DataSource.PointCloudData,
                       interpolation = Metashape.EnabledInterpolation,
                       face_count = Metashape.FaceCount.MediumFaceCount)
      doc.save()

      # Build orthomosaic under calculated projcetion
      chunk.buildOrthomosaic(surface_data = Metashape.DataSource.ModelData,
                             blending_mode = Metashape.BlendingMode.MosaicBlending,
                             projection = projection)
      doc.save()

    # Create ortho folder
    ortho_filepath = get_ortho_filepath()
    ortho_basename = get_ortho_basename()
    if not os.path.exists(ortho_filepath):
      try:
        os.mkdir(ortho_filepath)
      except OSError:
        sys.exit('Could not create folder: {}'.format(ortho_filepath))

    # Export transform matrix to csv file
    np.savetxt('{0}_trans_orthom.csv'.format(ortho_basename), camera_transform_mean, delimiter=',')

    ## Export full orthomosaic (TIFF)
    #chunk.exportRaster(path = project_filepath.replace('.psx', '_max_ortho.tif'),
    #                   image_format = Metashape.ImageFormat.ImageFormatTIFF,
    #                   source_data = Metashape.DataSource.OrthomosaicData,
    #                   projection = projection)
 
    # Export orthomosaic (TIFF) with max resolution 64kx64k
    output_resolution = max(chunk.orthomosaic.width, chunk.orthomosaic.height) * chunk.orthomosaic.resolution / 65536
    try:
      chunk.exportRaster(path = '{0}_64K_orthom.tif'.format(ortho_basename),
                         image_format = Metashape.ImageFormat.ImageFormatTIFF,
                         source_data = Metashape.DataSource.OrthomosaicData,
                         projection = projection,
                         resolution = output_resolution)
    except:
      # Only exporting as BigTiff on error (Maximum TIFF file size exceeded) as it makes orthos to slow to load
      compression = Metashape.ImageCompression()
      compression.tiff_big = True  
      chunk.exportRaster(path = '{0}_64K_orthom.tif'.format(ortho_basename),
                         image_format = Metashape.ImageFormat.ImageFormatTIFF,
                         source_data = Metashape.DataSource.OrthomosaicData,
                         projection = projection,
                         resolution = output_resolution,
                         image_compression = compression)      

    # Export orthomosaic (TIFF) with max resolution 32,767 x 32,767
    output_resolution = max(chunk.orthomosaic.width, chunk.orthomosaic.height) * chunk.orthomosaic.resolution / 32767
    chunk.exportRaster(path = '{0}_32K_orthom.tif'.format(ortho_basename),
                       image_format = Metashape.ImageFormat.ImageFormatTIFF,
                       source_data = Metashape.DataSource.OrthomosaicData,
                       projection = projection,
                       resolution = output_resolution)
    
    # Export orthomosaic (PNG) with max resolution 10,000 x 10,000
    output_resolution = max(chunk.orthomosaic.width, chunk.orthomosaic.height) * chunk.orthomosaic.resolution / 10000
    chunk.exportRaster(path = '{0}_10K_orthom.png'.format(ortho_basename),
                       image_format = Metashape.ImageFormat.ImageFormatPNG,
                       source_data = Metashape.DataSource.OrthomosaicData,
                       projection = projection,
                       resolution = output_resolution)

    # Export orthomosaic (PNG) with max resolution 2,000 x 2,000
    output_resolution = max(chunk.orthomosaic.width, chunk.orthomosaic.height) * chunk.orthomosaic.resolution / 2000
    chunk.exportRaster(path = '{0}_02K_orthom.png'.format(ortho_basename),
                       image_format = Metashape.ImageFormat.ImageFormatPNG,
                       source_data = Metashape.DataSource.OrthomosaicData,
                       projection = projection,
                       resolution = output_resolution)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('-s', '--skip_build', action='store_true',
                        help='set flag to skip building of model and ortho')
    args = parser.parse_args()
    main(args.skip_build)