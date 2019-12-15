#!/usr/bin/bash
# transcode video to constant framerate
# USAGE: cfr input output fps
function cfr() {
    help() {
      echo "usage: cfr input output fps"
      echo "-input        video input path"
      echo "-output       video output path"
      echo "-fps          framerate"
      echo ""
    }
    if [[ "$#" -eq 0 ]]; then
      help
    else
      help
      ffmpeg -i $1 -r $3 $2
    fi
}