#!/usr/bin/bash
# download video from Youtube with youtube-dl
# USAGE: yt URL
function yt() {
    help() {
      echo "usage: yt [URL]"
      echo "-URL          youtube video URL"
      echo ""
    }
    if [[ "$#" -eq 0 ]]; then
      help
    else
      help
      youtube-dl -o "/c/Users/gllm/Desktop/%(title)s.%(ext)s" $1
    fi
}