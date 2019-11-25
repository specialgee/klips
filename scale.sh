#!/usr/bin/bash
# scale input to specific size
# USAGE: scale input output width height
function scale() {
    help() {
      echo "usage: scale input output width height"
      echo "-input        video input path"
      echo "-output       video output path"
      echo "-width        scaled width size"
      echo "-height        scaled height size"
      echo ""
    }
    if [[ "$#" -eq 0 ]]; then
      help
    else
      help
      ffmpeg -i $1 -vf scale=$3:$4 $2
    fi
}