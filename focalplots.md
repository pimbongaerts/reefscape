# Focal plots workflow

Workflow for the reconstruction of our high-resolution 100m2 photogrammetry plots ("photoplots"). 

## Connect to server and check NAS mount

Connect to one of the lab servers using `ssh`:

```shell
# Make sure to be connected to the CAS network (using VPN or on site)
# Connect to the desired server as the `deepcat` user
$ ssh deepcat@deepseal # or `deepcat1`, `deepsquid` etc.
# Double-check that the `coral3d` NAS volume is mounted
$ ls /mnt/coral3d
```

## Copy across raw images

Copy across all the raw images for each plot, using the naming convention explained in [nas_folder_structure.md](nas_folder_structure.md):

```shell
# Start a new SCREEN session on the server with ZSH
$ screen -S copy_images zsh
# For example, a new timepoint (14-Feb-2020) of cur_kal_40m
$ cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m
# Check date that photographs were taken using sl function
# (which is: ls -lha [folder] | head)
$ sl [path_to_images_on_external_drive]
# Use that date to create a folder for that specific timepoint of focal plot
$ mkdir cur_kal_40m_20200214 && cd "$_"
# Create a subfolder to store the raw images
$ mkdir cur_kal_40m_20200214.raw && cd "$_"
# Copy over the RAW photographs
$ cp [path_to_images_on_external_drive]/*.CR2 .
# remember to use CTRL/CMD-A-D to detach screen
$ screen -r copy_images  # to re-attach
# ... repeat for every plot
$ exit # exit screen when finished
```

## Generate the "model report"

Use the `modelreport` function to run the [model_report.py](scripts/model_report.py) script, output to [README.md](report/README.md) file, and then push updated report to the github repository:

```shell
$ zsh # launch zsh to get access to modelreport function
$ modelreport
```

## Create/run batch jobs for newly added timepoints

Use the `create_batch_job` function to run the [create_batch_files.py](scripts/create_batch_files.py) script, to output batch/windows scripts to run remaining tasks:

```shell
$ zsh # launch zsh to get access to create_batch_job function)
$ create_batch_job
```

To run the created `~/reefscape/current_batch_jobs/densecloud_batch.sh` for converting images (to JPG) and reconstructing dense point clouds (using Agisoft Metashape):

```shell
# Preferably on `deepseal` server (as deepcat user)
$ cd ~/reefscape
$ screen -S densecloud_batch zsh
# Make batch job executable & run
$ chmod +x densecloud_batch.sh
$ ~/reefscape/current_batch_jobs/densecloud_batch.sh
# Check that Agisoft recognizes both GPUs:
Agisoft Metashape Professional Version: 1.6.4 build 10928 (64 bit)
Platform: Linux
CPU: Intel(R) Core(TM) i9-10900K CPU @ 3.70GHz (desktop)
CPU family: 6 model: 165 signature: A0655h
RAM: 125.6 GB
Found 2 GPUs in 0.112043 sec (CUDA: 0.085559 sec, OpenCL: 0.026468 sec)
...
# remember to use CTRL/CMD-A-D to detach screen
$ screen -r densecloud_batch  # to re-attach
$ exit # exit screen when finished
```

To run the created `~/reefscape/current_batch_jobs/viscore_batch.bat` for batch conversion of models to Viscore (on `wdizg-viscore` server):

```powershell
# Connect to wdizg-viscore using Microsoft Remote Desktop
# Start Powershell
> cd C:\Users\deepcat\reefscape\
# Update git repo to get newest batch job file
> git pull
> cd current_batch_jobs
> ./viscore_batch.bat
# Watch that "Writing snip.." does not give any errors
# Close Microsoft Remote Desktop instance & check in occasionally
```

#### To-do:

Post-agisoft:

* Batch decimate all the PLYs to 2-3 different resolutions, and upload to G-Drive
* Batch video of all images used for plot
* Copy decimated PLYs across to Google Drive
* Upload representative PLY for each plot to Sketchfab

Post-viscore:

* Batch ortho-projection of PLY using Open3D
* 
