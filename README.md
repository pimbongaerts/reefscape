# Photogrammetry script library
Collection of Python scripts for parsing/analysis of pointcloud data. While many of the scripts are functional, some still need considerable cleaning up and more thorough testing - and this repository therefore very much represents a *work in progress*.

These scripts all require [Python 3](https://www.python.org/downloads/), with many using either the [Open3D](http://www.open3d.org/) library or the [Metashape API](https://www.agisoft.com/forum/index.php?board=17.0). Other packages that may be required are: psutil and fpdf.

This documentation is dynamically generated using the listed [README_compile.py](README_compile.py) script, extracting purpose, usage and links to example files from the [argparse](https://docs.python.org/3/library/argparse.html) information of each script.

## metashape

**[metashape_create_ortho.py](metashape_create_ortho.py)** - Create orthomosaic using the Metashape 2.0 API. ./metashape.sh -platform
offscreen -r ~/reefscape/scripts/create_ortho.py or create an alias: alias
ortho="~/path_to_metashape-pro/metashape.sh -platform offscreen -r
~/reefscape/scripts/create_ortho.py" *[File did not pass PEP8 check]*

	usage: metashape_create_ortho.py [-h] [-s]

	optional arguments:
	  -h, --help        show this help message and exit
	  -s, --skip_build  set flag to skip building of model and ortho
	
**[metashape_get_camera_distances.py](metashape_get_camera_distances.py)** - positional arguments:
  ref_timepoint_id      ref_timepoint_id *[File did not pass PEP8 check]*

	usage: metashape_get_camera_distances.py [-h] [-t timepoint_id]
                                         ref_timepoint_id

	optional arguments:
	  -h, --help            show this help message and exit
	  -t timepoint_id, --timepoint_id timepoint_id
	                        optional single timepoint
	
**[metashape_export_point_cloud.py](metashape_export_point_cloud.py)** - Constructs and exports dense point cloud from raw images, using the Metashape
2.0 API. Usage: ./metashape.sh -platform offscreen -r create_dense_cloud.py or
create an alias: alias densecloud="~/path_to_metashape-pro/metashape.sh
-platform offscreen -r ~/protocols/scripts/create_dense_cloud.py" #TODO:
Open/Close log file *[File did not pass PEP8 check]*

	usage: metashape_export_point_cloud.py [-h]

	optional arguments:
	  -h, --help  show this help message and exit
	
**[metashape_get_cameras.py](metashape_get_cameras.py)** - Note: no whitespace allowed in coordinate labels *[File did not pass PEP8 check]*

	usage: metashape_get_cameras.py [-h] model_id annotations_filename max_cameras

	positional arguments:
	  model_id              ID of model (e.g. cur_kal_60m_20201214
	  annotations_filename  Text file with 4 columns: label, x, y, z
	  max_cameras           maximum number of cameras to retrieve for each
	                        coordinate
	
	optional arguments:
	  -h, --help            show this help message and exit
	
**[metashape_create_dense_cloud.py](metashape_create_dense_cloud.py)** - Constructs and exports dense point cloud from raw images, using the Metashape
2.0 API. Usage: ./metashape.sh -platform offscreen -r create_dense_cloud.py or
create an alias: alias densecloud="~/path_to_metashape-pro/metashape.sh
-platform offscreen -r ~/protocols/scripts/create_dense_cloud.py" #TODO:
Open/Close log file *[File did not pass PEP8 check]*

	usage: metashape_create_dense_cloud.py [-h] [-c camera_extension]
                                       [-a aligned_camera_threshold]

	optional arguments:
	  -h, --help            show this help message and exit
	  -c camera_extension, --camera_extension camera_extension
	                        extension/format of converted cameras (default: jpg)
	  -a aligned_camera_threshold, --aligned_camera_threshold aligned_camera_threshold
	                        minimum threshold of aligned cameras (default 0.95)
	
**[metashape_model_stats.py](metashape_model_stats.py)** -  *[File did not pass PEP8 check]*

	no usage information

	
**[metashape_model_mark_export.py](metashape_model_mark_export.py)** -  *[File did not pass PEP8 check]*

	no usage information

	
**[metashape_get_images.py](metashape_get_images.py)** - Note: no whitespace allowed in coordinate labels Requires numpy and open-cv to
be installed for Metashape's Python *[File did not pass PEP8 check]*

	usage: metashape_get_images.py [-h] [--scaling_factor SCALING_FACTOR]
                               [--category_column CATEGORY_COLUMN]
                               [--max_annotations MAX_ANNOTATIONS]
                               [--max_images MAX_IMAGES]
                               [--max_distance MAX_DISTANCE]
                               [--min_sharpness MIN_SHARPNESS]
                               [--crop_size CROP_SIZE] [--img_size IMG_SIZE]
                               [--split_categories] [--omit_overlay] [--movie]
                               metashape_project_path annotations_filename
                               output_folder

	positional arguments:
	  metashape_project_path
	                        metashape_project_path
	  annotations_filename  Text file with 4 columns: label, x, y, z
	  output_folder         Output folder (will be created if does not exist)
	
	optional arguments:
	  -h, --help            show this help message and exit
	  --scaling_factor SCALING_FACTOR, -f SCALING_FACTOR
	                        Scaling factor to convert altitude to metres (default
	                        = 1.0)
	  --category_column CATEGORY_COLUMN, -c CATEGORY_COLUMN
	                        Category /.category column (0-based counting; default
	                        = 6)
	  --max_annotations MAX_ANNOTATIONS, -a MAX_ANNOTATIONS
	                        Optional maximum number of annotations to process
	  --max_images MAX_IMAGES, -i MAX_IMAGES
	                        Optional maximum number of cameras to output per
	                        annotation
	  --max_distance MAX_DISTANCE, -d MAX_DISTANCE
	                        Optional maximum distance of camera to annotation
	                        threshold (in metres as float)
	  --min_sharpness MIN_SHARPNESS, -x MIN_SHARPNESS
	                        Optional minimum sharpness threshold (measured as
	                        average gradient magnitude)
	  --crop_size CROP_SIZE
	                        Optional crop size (default = 1000px)
	  --img_size IMG_SIZE   Optional image resize (default is crop_size)
	  --split_categories, -s
	                        Optional flag to split image categories into different
	                        folders (True if provided)
	  --omit_overlay, -o    Optional flag to omit image overlay with metadata
	                        (True if provided)
	  --movie, -m           Optional flag to create movie instead of images
	

## other

**[decimate_large_plys.py](decimate_large_plys.py)** - positional arguments:
  ref_timepoint_id  ref_timepoint_id *[File did not pass PEP8 check]*

	usage: decimate_large_plys.py [-h] ref_timepoint_id

	optional arguments:
	  -h, --help        show this help message and exit
	
**[coral_extractor.py](coral_extractor.py)** - Creates a PDF of all timepoints for each annotated coral *[File did not pass PEP8 check]*

	usage: coral_extractor.py [-h] [-p] [-t] [-c] [-m] annotations_filename

	positional arguments:
	  annotations_filename  txt file with annotations (label, x, y, z, other_cols)
	
	optional arguments:
	  -h, --help            show this help message and exit
	  -p, --parallel        set flag to use parallel / multiprocessing
	  -t, --trial           set flag to run trial for for first 10 annotations
	  -c, --check           set flag to check that all ply files can be read
	  -m, --medium          set flag to run at med-res quality
	
**[sync_firefish_data.py](sync_firefish_data.py)** - Script syncs camera date/times with metadata Combined date/time field has to
be formatted like such: 2020:02:25 12:59:20 *[File did not pass PEP8 check]*

	usage: sync_firefish_data.py [-h]
                             camdists_filename firefish_filename firefish_time

	positional arguments:
	  camdists_filename  camdists_filename
	  firefish_filename  firefish_filename
	  firefish_time      unix time of firefish for first photograph
	
	optional arguments:
	  -h, --help         show this help message and exit
	
**[README_compile.py](README_compile.py)** - Compiles README markdown file for this repository
(https://github.com/pimbongaerts/reefscape). Categories are assigned based on
prefix, usage information is extracted from argparse, and example input files
are assigned based on argument names. *[File did not pass PEP8 check]*

	usage: README_compile.py [-h]

	optional arguments:
	  -h, --help  show this help message and exit
	
**[reefscape.py](reefscape.py)** -  *[File did not pass PEP8 check]*

	no usage information

	
**[transform_coords.py](transform_coords.py)** - Note: no whitespace allowed in coordinate labels *[File did not pass PEP8 check]*

	usage: transform_coords.py [-h] [-t] timepoint_id annotations_filename

	positional arguments:
	  timepoint_id          timepoint ID of target model (e.g.
	                        cur_kal_60m_20201214
	  annotations_filename  txt file with annotations (label, x, y, z, other_cols)
	
	optional arguments:
	  -h, --help            show this help message and exit
	  -t, --trial           set flag to run trial for for first 10 annotations
	
**[test.py](test.py)** -  *[File did not pass PEP8 check]*

	no usage information

	
**[filter_altitude_data.py](filter_altitude_data.py)** - positional arguments:
  altimeter_file  csv file with altimeter data *[File did not pass PEP8 check]*

	usage: filter_altitude_data.py [-h] altimeter_file

	optional arguments:
	  -h, --help      show this help message and exit
	
**[sync_altitude_data.py](sync_altitude_data.py)** - Script syncs camera date/times with metadata Combined date/time field has to
be formatted like such: 2020:02:25 12:59:20 *[File did not pass PEP8 check]*

	usage: sync_altitude_data.py [-h] file1 file2 timecol1 timecol2 offset

	positional arguments:
	  file1       file 1
	  file2       file 2
	  timecol1    timecol1
	  timecol2    timecol2
	  offset      offset (in sec) of file2 compared to file1
	
	optional arguments:
	  -h, --help  show this help message and exit
	
**[create_batch_files.py](create_batch_files.py)** - Creates a bash script to generate dense clouds for models that have not yet
been processed (based on README.md generated with model_report.py script) &
convert to Viscore for those that are ready. *[File did not pass PEP8 check]*

	usage: create_batch_files.py [-h] README_filename

	positional arguments:
	  README_filename
	
	optional arguments:
	  -h, --help       show this help message and exit
	
**[coral_extractor_manual.py](coral_extractor_manual.py)** - positional arguments:
  annotations_filename  txt file with annotations (label, x, y, z, other_cols) *[File did not pass PEP8 check]*

	usage: coral_extractor_manual.py [-h] [-p] [-t] [-c] [-m] annotations_filename

	optional arguments:
	  -h, --help            show this help message and exit
	  -p, --parallel        set flag to use parallel / multiprocessing
	  -t, --trial           set flag to run trial for for first 10 annotations
	  -c, --check           set flag to check that all ply files can be read
	  -m, --medium          set flag to run at med-res quality
	
**[convert_cameras.py](convert_cameras.py)** - Convert cameras from CR2 raw format to JPG using `darktable-cli`, which needs
to be accessible through PATH variable. The config and temporary folder are
currently still hardcoded. *[File did not pass PEP8 check]*

	usage: convert_cameras.py [-h] [-c camera_extension]

	optional arguments:
	  -h, --help            show this help message and exit
	  -c camera_extension, --camera_extension camera_extension
	                        extension/format of converted cameras (default: jpg)
	
**[organize_cams.py](organize_cams.py)** - positional arguments:
  location_id           location_id (e.g. cur_kal
  destination_path      destination path to copy photos to (e.g.
                        /volume2/coral3d/focal_plots)
  folder_type           destination folder type (e.g. raw or photos or
                        closeup) *[File did not pass PEP8 check]*

	usage: organize_cams.py [-h] [-t time_threshold]
                        location_id destination_path folder_type

	optional arguments:
	  -h, --help            show this help message and exit
	  -t time_threshold, --time_threshold time_threshold
	                        maximum time in sec between photos to be considered a
	                        sequence (default = 20)
	
**[timesync_files.py](timesync_files.py)** - Script syncs altimeter metadata with cameras based on offset Important to set
local timezone in shell: $ TZ='UTC0'; export TZ *[File did not pass PEP8 check]*

	usage: timesync_files.py [-h] cam_filename alt_filename offset max_dev

	positional arguments:
	  cam_filename  cam_filename
	  alt_filename  alt_filename
	  offset        offset (in sec) of alt_filename compared to cam_filename
	  max_dev       maximum allowed deviation between time (in sec)
	
	optional arguments:
	  -h, --help    show this help message and exit
	
**[model_report.py](model_report.py)** -  *[File did not pass PEP8 check]*

	no usage information

	
