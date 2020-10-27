## Extract bottom depths for photos from altimeter data

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

![altimeter](/Users/pbongaerts/Github/reefscape/images/altimeter.png)

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

