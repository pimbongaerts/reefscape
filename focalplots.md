# Focal plots workflow

Workflow for the reconstruction of our high-resolution 100m2 photogrammetry plots ("photoplots"). 

## Organize images

**1 - Access the server** (using `ssh` and from within the network or using VPN) and set up a `screen` session:

```shell
# SSH into server and start a new SCREEN session with ZSH
$ ssh deepcat@deepseal # or `deepcat1`
$ screen -S photoplot zsh
# Ensure that NAS volumes with raw data & reconstructions are mounted
$ sudo mount deepcat2:/volume1/curacao_raw /home/deepcat/mounts/deepseal/curacao_raw
$ sudo mount deepcat2:/volume2/coral3d /home/deepcat/mounts/deepseal/coral3d
```

**2 - Copy across the RAW photographs** to be extracted:

```shell
# Example: Curacao - Playa Kalki 40m 2020mar
$ cd ~/mounts/coral3d/focal_plots/cur_kal/cur_kal_40m
# Check date that photographs were taken
# using sl function (which is: ls -lha [folder] | head)
$ sl ~/mounts/curacao_raw/[folder]/
# Create folder for specific timepoint of focal plot
$ mkdir cur_kal_40m_20200214 && cd "$_"
# Copy over the RAW photographs
$ cp ~/mounts/curacao_raw/[folder]/*.CR2 .
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

## Remote Viscore workstation



```shell
$ scp pim@deepcat2:/volume2/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20200303/cur_sna_20m_20200303.ply .

```

