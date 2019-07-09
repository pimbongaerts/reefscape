# Reefscape pipeline

Workflow for the reconstruction of high-altitude photogrammetry plots ("reefscape plots"). 

## Extract images from video

**1 - Access the server** (using `ssh` and from within the network or using VPN) and set up a `screen` session:

```shell
$ ssh deepcat1
# Start a new SCREEN session with ZSH (Z-shell)
$ screen -S video_extract zsh
# Ensure that NAS volume with raw data is mounted
$ sudo mount deepcat2:/volume1/curacao_raw ~/mounts/curacao_raw
# Ensure that NAS volume with reconstructions is mounted
$ sudo mount deepcat2:/volume2/coral3d ~/mounts/coral3d
```

**2 - Copy across and organize the raw videos** to be extracted:

```shell
# Example: Q1 from Westpoint)
$ cd ~/mounts/coral3d/Westpoint/overview
$ mkdir westpoint_Q1 && cd "$_"
# Copy across raw videos
$ cp ~/mounts/curacao_raw/Curacao\ 2019/02-23-2019\ Westpunt/PM\ Mapping/Gopro\ 7\ Ale/*.MP4 .
# Show filesizes and remove videos not part of photogrammetry
$ ls -lh
total 15G
-rwxr-xr-x 1 pbongaerts domain users  54M May  2 11:27 GX018985.MP4
-rwxr-xr-x 1 pbongaerts domain users  16M May  2 11:27 GX018986.MP4
-rwxr-xr-x 1 pbongaerts domain users  31M May  2 11:27 GX018987.MP4
-rwxr-xr-x 1 pbongaerts domain users 212M May  2 11:27 GX018988.MP4
-rwxr-xr-x 1 pbongaerts domain users  64M May  2 11:27 GX018989.MP4
-rwxr-xr-x 1 pbongaerts domain users 171M May  2 11:27 GX018990.MP4
-rwxr-xr-x 1 pbongaerts domain users 3.8G May  2 11:28 GX018991.MP4
-rwxr-xr-x 1 pbongaerts domain users 3.8G May  2 11:28 GX028991.MP4
-rwxr-xr-x 1 pbongaerts domain users 3.8G May  2 11:29 GX038991.MP4
-rwxr-xr-x 1 pbongaerts domain users 2.9G May  2 11:30 GX048991.MP4
$ rm GX018985.MP4 GX018986.MP4 GX018987.MP4 GX018988.MP4 GX018989.MP4 GX018990.MP4
```

**3 - Use the [batch_framer.sh]([source](https://github.com/pimbongaerts/framer/blob/master/batch_framer.sh)) script to extract frames** of all videos and rename the folders so they are sequential for import into MetaScan.  Additional info*: The script uses a modification Ryan's [framer script](https://github.com/ryanbooker/framer), which uses`ffmpeg`'s edge detection to extract the sharpest frame from each second of video. It uses [ffmpeg](https://ffmpeg.org), [imagemagick](https://www.imagemagick.org) and [GNU Parallel](https://www.gnu.org/software/parallel/). On the deepcat1 server, ffmpeg is compiled for NVIDIA hardware accelleration (see: https://developer.nvidia.com/ffmpeg) to leverage the internal GPU (NVidia GP 100; TODO: compile imagemagick too).

```shell
$ ~/Github/framer/batch_framer.sh
# Screen can then be detached with Ctrl-A-D
# To check progress, reattach with: screen -r video_extract
```

**4 - Clean up video files and prepare frames for import**.

```shell
# When the script finishes extracting frames, double-check the outputted number of frames:
# for full-size videos (~3.8GB) there should be around XXXX files
$ for i in GP*; do ls "$i" | wc -l; done
# If that looks OK, remove the video files
$ rm *.MP4
# Move folders with extracted frames to a new `photos` folder for import
$ mkdir photos && mv GP* photos
```



## Installation notes

* TBD