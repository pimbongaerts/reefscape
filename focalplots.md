# Focal plots workflow

Workflow for the reconstruction of our high-resolution 100m2 photogrammetry plots ("photoplots"). 

## Organize images

**1 - Access the server** (using `ssh` and from within the network or using VPN) and set up a `screen` session:

```shell
# SSH into server and start a new SCREEN session with ZSH
$ ssh deepcat1
$ screen -S photoplot zsh
# Ensure that NAS volumes with raw data & reconstructions are mounted
$ sudo mount deepcat2:/volume1/curacao_raw ~/mounts/curacao_raw
$ sudo mount deepcat2:/volume2/coral3d ~/mounts/coral3d
```

**2 - Copy across the RAW photographs** to be extracted:

```shell
# Example: Curacao - Playa Kalki 60m 2020mar
$ cd ~/mounts/coral3d/curacao_focal/cur_kal_60m
# Create folder for specific timepoint of focal plot
$ mkdir cur_kal_60m_20190203 && cd "$_"
$ cp /Volumes/curacao_raw/[folder]/*.CR2 .
```

**3 - Create JPEG version of RAW images**:

```shell
#$ ls seaquarium_40m_2020mar.raw/*.CR2 | parallel -j 30 convert {} -set colorspace RGB -colorspace sRGB jpg:{.}.jpeg
$ mogrify -format jpeg -set colorspace RGB -colorspace sRGB *.CR2
$ mkdir seaquarium_40m_2020mar.photos
$ mv seaquarium_40m_2020mar.raw/*.jpg seaquarium_40m_2020mar.photos
```

**4 - Build dense cloud in Agisoft Metascan using create_dense_cloud.py script **:

```shell
# Ensure you are inside the right folder
$ pwd
~/mounts/coral3d/curacao_focal/cur_kal_60m/cur_kal_60m_20190203
$ ~/tools/metashape-pro/metashape.sh -r create_dense_cloud.py
```

