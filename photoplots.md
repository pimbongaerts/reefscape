# Photoplots workflow

Workflow for the reconstruction of our high-resolution 100m2 photogrammetry plots ("photoplots"). 

## Organize images

**1 - Access the server** (using `ssh` and from within the network or using VPN) and set up a `screen` session:

```shell
$ ssh deepcat1
# Start a new SCREEN session with ZSH
$ screen -S video_extract zsh
# Ensure that NAS volume with raw data is mounted
$ sudo mount deepcat2:/volume1/curacao_raw ~/mounts/curacao_raw
# Ensure that NAS volume with reconstructions is mounted
$ sudo mount deepcat2:/volume2/coral3d ~/mounts/coral3d
```

**2 - Copy across the photographs** to be extracted:

```shell
# Example: Seaquarium 12m
$ cd ~/mounts/coral3d/Seaquarium/photoplots
$ mkdir seaquarium_12 && cd "$_"
# Copy across raw photographs
$ cp /Volumes/curacao_raw/Curacao\ 2019/03-01-2019\ Seaquarium/PM\ Photogrammetry\ plot\ 12\ m/Cannon\ Photogrammetry/2019_03_01/*.CR2 .
```

**3 - Create JPEG version of RAW images**:

```shell
$ ls seaquarium_40m_2020mar.raw/*.CR2 | parallel -j 30 convert {} -set colorspace RGB -colorspace sRGB jpg:{.}.jpeg
$ mkdir seaquarium_40m_2020mar.photos
$ mv seaquarium_40m_2020mar.raw/*.jpg seaquarium_40m_2020mar.photos

$ for file in *.CR2; do 

convert cr2:*.cr2 -set colorspace RGB -colorspace sRGB jpg:{.}.jpeg

convert cr2:seaquarium_40m_2020mar.raw/0X7A2543.CR2 -set colorspace RGB -colorspace sRGB jpg:test.jpg

$ mogrify -format jpeg -set colorspace RGB -colorspace sRGB *.CR2
```



**4 - Import into Agisoft Metascan**:

* 

 convert cr2:0X7A6770.CR2 -set colorspace RGB -colorspace sRGB 0X7A6770_c.jpg