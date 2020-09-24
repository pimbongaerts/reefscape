#!/bin/bash
#force_portrait_orientation.sh

# requires exiftool: https://www.sno.phy.queensu.ca/~phil/exiftool/

filename=$1
# Extract orientation from exif
orientation=$(exiftool -Orientation $filename | cut -d":" -f2)
cam_orientation=$(exiftool -CameraOrientation $filename | cut -d":" -f2)
# Update Orientation in exif to "Rotate 90 CW" (= 6) if not already the case
# Note: Camera Orientation not updated
if [ "$orientation" != " Rotate 90 CW" ] || [ "$cam_orientation" != " Rotate 90 CW" ]; then
	exiftool -Orientation=6 -CameraOrientation=1 $filename -n
	echo "Corrected exif (Camera) Orientation for: $filename"
fi