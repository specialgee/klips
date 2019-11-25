#!/usr/bin/bash
# extract one frame from video
# USAGE: frame input output time
function frame() {
    help() {
      echo "usage: frame [input] [output] [timestamp]"
      echo "-input        video input path"
      echo "-output       video output path"
      echo "-time        frame position timestamp"
      echo ""
    }
    if [[ "$#" -eq 0 ]]; then
      help
    else
      help
      ffmpeg -i $1 -ss $3 -vframes 1 $2
    fi
}