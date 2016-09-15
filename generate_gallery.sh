#!/bin/bash
serverroot = ${PWD#/usr/share/www}

echo "<!-- Hidden video div -->"
for filename in *.{mp4,MP4}; do
  noextension="${filename%.*}"
  echo "
  <div style=\"display:none;\" id=\"$noextension\">
    <video class=\"lg-video-object lg-html5\" controls preload=\"none\">
      <source src=\"$serverroot/$filename\" type=\"video/mp4\">
      Your browser does not support HTML5 video.
    </video>
  </div>"
done

echo "<div class=\"row\">"
echo "  <div class=\"demo-gallery\">"
echo "    <ul id=\"lightgallery\" class=\"list-unstyled row\">"
for filename in *.{jpg,JPG}; do
  echo "
  <li class=\"col-xs-6 col-sm-4 col-md-3 li-gallery\" data-responsive=\"$serverroot/$filename 800\" data-src=\"$serverroot/$filename\" data-sub-html=\"\">
    <a href=\"\">
      <img class=\"img-gallery img-responsive\" src=\"$serverroot/thumbs/$filename\">
    </a>
  </li>"
done
for filename in *.{mp4,MP4}; do
  noextension="${filename%.*}"
  echo "
  <li class=\"col-xs-6 col-sm-4 col-md-3 li-gallery\" data-poster=\"$serverroot/thumbs/$noextension.jpg\" data-sub-html=\"\" data-html=\"#$noextension\" >
    <a href=\"\">
      <img class=\"img-gallery img-responsive\" src=\"$serverroot/thumbs/$noextension.jpg\" />
    </a>
  </li>"
done
echo "    </ul>"
echo "  </div>"
echo "</div>"
