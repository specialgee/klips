#!/usr/bin/bash
# chop video
# USAGE: chop input output start end fps width
function chop() {
    help() {
      echo "usage: chop [input] [output] [start] [end] [fps] [width]"
      echo "-input        video input path"
      echo "-output       video output path"
      echo "-start        start time in seconds/timestamp"
      echo "-end          end time in duration/timestamp"
      echo "-fps          framerate"
      echo "-width        output video width"
      echo ""
    }
    if [[ "$#" -eq 0 ]]; then
      help
    else
      help
      ffmpeg -ss $3 -t $4 -i $1 -filter_complex '[0:v] fps='$5',scale='$6':-1' $2
    fi
}