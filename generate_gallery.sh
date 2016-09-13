#!/bin/bash
for filename in *.{jpg,JPG,mp4,MP4}; do
      echo "
      <a href=\"$PWD/$filename\">
        <img class=\"img-responsive\" src=\"$PWD/thumbnail/$filename\">
      </a>"
done
