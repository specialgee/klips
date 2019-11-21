#!/usr/bin/bash
# download video from Youtube with youtube-dl
# USAGE: yt URL
function yt() {
    help() {
      echo "usage: yt [url]"
      echo "-url          youtube video url"
      echo ""
    }
    if [[ "$#" -eq 0 ]]; then
      help
    else
      help
      youtube-dl --recode-video "mp4" -o "/c/Users/gllm/Desktop/%(title)s.%(ext)s" $1
    fi
}