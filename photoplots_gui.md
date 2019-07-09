# Photoplots pipeline (GUI)

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

**3 - Import into Agisoft Metascan**:

* 

