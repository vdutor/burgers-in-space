#!/bin/bash
for filename in *.{jpg,JPG}; do
  echo "
  <li class=\"col-xs-6 col-sm-4 col-md-3\" data-responsive=\"$PWD/$filename 800\" data-src=\"$PWD/$filename\" data-sub-html=\"\">
    <a href=\"\">
      <img class=\"img-responsive\" src=\"$PWD/thumbs/$filename\">
    </a>
  </li>"
done
for filename in *.{mp4,MP4}; do
  noextension="${filename%.*}"
  echo "
  <li data-poster=\"video-poster2.jpg\" data-sub-html=\"\" data-html=\"#$noextension\" >
    <a href=\"\">
      <img src=\"$PWD/thumbs/$noextension.jpg\" />
    </a>
  </li>"
done
for filename in *.{mp4,MP4}; do
  noextension="${filename%.*}"
  echo "
  <div style=\"display:none;\" id=\"$noextension\">
    <video class=\"lg-video-object lg-html5\" controls preload=\"none\">
      <source src=\"$PWD/$filename\" type=\"video/mp4\">
      Your browser does not support HTML5 video.
    </video>
  </div>"
done
