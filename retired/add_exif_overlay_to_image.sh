#!/bin/bash
#add_exif_overlay_to_image.sh

# requires exiftool: https://www.sno.phy.queensu.ca/~phil/exiftool/
	
# Extract camera info from exif information
filename=$1
lens=$(exiftool -lens $filename | cut -d":" -f2)
iso=$(exiftool -iso $filename | cut -d":" -f2)
aperture=$(exiftool -aperture $filename | cut -d":" -f2)
shutter=$(exiftool -shutterspeed $filename | cut -d":" -f2)
gps=$(exiftool -GPSPosition $filename | cut -f2 -d":" | cut -d" " -f2,4,5,6,7,9,10,11)
datetime=$(exiftool -DateTimeOriginal $filename | cut -d":" -f2- | sed 's/:/./g')
framestamp="$filename$datetime ($lens ISO$iso F$aperture$shutter) $gps"

# Add 

# Convert raw file to temporary jpg using ImageMagick
basename=$(echo "$filename" | cut -f 1 -d '.')
temp_filename="temp_$basename.jpg"
convert -resize 1920 cr2:$filename $temp_filename #-auto-orient

# Insert framestamp on image
new_filename="$basename.jpg"
ffmpeg -i $temp_filename -vf "drawtext=fontfile=Arial.ttf: text=$framestamp: x=100: y=h-(2*lh): fontcolor=black: fontsize=30: box=1: boxcolor=gray: boxborderw=5" -loglevel panic $new_filename

# Remove temporary file
rm $temp_filename