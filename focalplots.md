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
$ exit # screen
```

## Generate the "model report"

Run the [model_report.py](scripts/model_report.py) script and output to [README.md](report/README.md) file for github repository:

```shell
# Launch zsh (to ensure access to modelreport function)
$ zsh
$ modelreport
```

See below the contents of the `modelreport` function:

```shell
cd ~/reefscape/scripts/
model_report.py > ~/reefscape/report/README.md
git --git-dir=/home/deepcat/reefscape/.git/ --work-tree=/home/deepcat/reefscape/ commit -am 'Automatic report update'
git push
```

## Create batch job scripts for newly added timepoints

text

```shell
$ cd  ~/reefscape/report/
$ ./create_batch_files.py
```





**3 - Build dense cloud in Agisoft Metascan using [create_dense_cloud.py](scripts/create_dense_cloud.py) script **:

```shell
# Ensure you are using zsh and are inside the right folder
# e.g. ../cur_kal/cur_kal_40m/cur_kal_40m_20200214
# Then run the create_dense_cloud.py script (using alias):
$ densecloud
```

With some of the Mar-2019 plots there are some issues with the original CR2 files - for these we will need to do non-lossy conversion to  PNGs first:

```shell
$  find . -type f -iname "*.CR2" | parallel -j 30 mogrify -format png -set colorspace RGB -colorspace sRGB -quality 100 -resize 2880x1920 {}
# Then run densecloud with specification of the camera format (-c)
$ densecloud -c png
```

Targets with colors: 49.9cm

Targets with ruler: 50.0cm

#





## Remote Viscore workstation



```shell
$ scp pim@deepcat2:/volume2/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20200303/cur_sna_20m_20200303.ply .

```

