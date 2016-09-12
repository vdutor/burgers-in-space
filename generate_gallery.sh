#!/bin/bash
for filename in *.{jpg,JPG,mp4,MP4}; do
      echo "
      <li class=\"col-xs-6 col-sm-4 col-md-3\" data-responsive=\"$PWD/$filename 800\" data-src=\"$PWD/$filename\" data-sub-html=\"\">
        <a href=\"\">
            <img class=\"img-responsive\" src=\"$PWD/$filename\">
        </a>
      </li>"
done
