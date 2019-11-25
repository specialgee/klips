#!/usr/bin/bash
# download audio/video from Youtube with youtube-dl
# USAGE: yt [format] url
function yt() {
    help() {
      echo "usage: yt [format] url"
      echo "-url          youtube video url"
      echo "-format       currently supported: mp3, mp4"
      echo ""
    }
    if [[ "$#" -eq 0 ]]; then
      help
    elif [[ "$#" -eq 1 ]]; then
      help

      youtube-dl --recode-video "mp4" -o "/c/Users/gllm/Desktop/%(title)s.%(ext)s" $1
    else
      help

      format=$1
 
      if [[ $format == "mp3" ]]; then
          youtube-dl -x --audio-format "mp3" -o "/c/Users/gllm/Desktop/%(title)s.%(ext)s" $2
      elif [[ $format == "mp4" ]]; then
          youtube-dl --recode-video "mp4" -o "/c/Users/gllm/Desktop/%(title)s.%(ext)s" $2
      else
          echo
      fi

    fi
}