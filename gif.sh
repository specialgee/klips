#!/usr/bin/bash
# extract gif from video
# USAGE: gif input output start end fps width
function gif() {
    help() {
      echo "usage: gif [input] [output] [start] [end] [fps] [width]"
      echo "-input        video input path"
      echo "-output       gif output path"
      echo "-start        start time in seconds/timestamp"
      echo "-end          end time in duration/timestamp"
      echo "-fps          framerate"
      echo "-width        output image width"
      echo ""
    }
    if [[ "$#" -eq 0 ]]; then
      help
    else
      help
      ffmpeg -ss $3 -t $4 -i $1 -filter_complex '[0:v] fps='$5',scale='$6':-1,split [a][b];[a] palettegen [p];[b][p] paletteuse' $2  
    fi
}