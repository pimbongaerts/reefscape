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
# Example: Curacao - Playa Kalki 40m 2020mar
$ cd ~/mounts/coral3d/curacao_focal/cur_kal_40m
# Check date that photographs were taken
# using sl function (which is: ls -lha [folder] | head)
$ sl ~/mounts/curacao_raw/[folder]/
# Create folder for specific timepoint of focal plot
$ mkdir cur_kal_40m_20200214 && cd "$_"
# Copy over the RAW photographs
$ cp ~/mounts/curacao_raw/[folder]/*.CR2 .
```

**3 - Create JPEG version of RAW images**:

```shell
# Check resolution of one of the CR2 raw images
$ exiftool --ImageSize 0X7A5492.CR2
Image Size                      : 8688x5792
# Run ImageMagick conversion to JPEG in parallel (specify number of threads in -j and resolution in -resize)
$ find . -type f -iname "*.CR2" | parallel -j 30 mogrify -format jpeg -set colorspace RGB -colorspace sRGB -resize 8688x5792 {}
$ mkdir ../cur_kal_40m_20200214.photos
$ mv *.jpeg ../cur_kal_40m_20200214.photos
```

**4 - Build dense cloud in Agisoft Metascan using [create_dense_cloud.py](scripts/create_dense_cloud.py) script **:

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



**5 - Extract bottom depths for photos from altimeter data **:

Download and open the photo of the altimeter for that day,copy it to the timepoint folder as a permanent record, and determine offset:

```shell
# Download it to view a local copy to note the time
[local] $ scp [user]:~/mounts/curacao_raw/[folder]/0X7A9986.CR2 .
[local] $ open 0X7A9986.CR2 # see below - time in image: 09:10:02
# Copy it to the timepoint folder as permanent record
$ mkdir cur_kal_40m_20200214.alt
$ cp ~/mounts/curacao_raw/[folder]/0X7A9986.CR2 cur_kal_40m_20200214.alt/
# Determine offset by extracing DateTimeOriginal from exit
$ TZ='UTC0'; export TZ
$ exiftool -time:DateTimeOriginal cur_kal_40m_20200214.alt/0X7A9986.CR2
Date/Time Original              : 2020:02:14 09:11:37
# offset = 09:10:02 - 09:11:37 -  =  -95 secs
# negative value here as altimeter is 95 secs behind the camera
```

![altimeter](images/altimeter.png)

Match altimeter data with images and output to csv file with the [timesync_files.py](scripts/timesync_files.py) script:

```shell
# Extract DateTimeOriginal from exif of cameras/photos
$ cd cur_kal_40m_20200214.raw
$ for i in *.CR2; do camtime=$(exiftool -time:DateTimeOriginal $i | tail -c 20); echo $i "," $camtime; done > ../temp_camera_times.csv
# Match images with altimeter metadata (-95 seconds offset and
# maximum allowed deviation of 2 seconds)
$ timesync_files.py temp_camera_times.csv aratui_filtered2.csv -95 2 > cur_kal_40m_20200214.alt.csv
$ rm temp_camera_times.csv
```

