#!/bin/bash
# To make use of this script, you will need ImageMagick

mkdir -p thumbs

for i in *.{jpg,JPG}; do
  if [ "$i" -nt "thumbs/$i" ]; then
      convert "$i" -thumbnail 200 "thumbs/$i";
  fi
done;

for i in *.{mp4,MP4}; do
  noextension="${i%.*}"
  if [ "$i" -nt "thumbs/$noextension.jpg" ]; then
    convert $i[10] "thumbs/$noextension.jpg";
  fi
done;
