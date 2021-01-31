#!/bin/bash

for folder in ./* ; do
  if [ ! -f "${folder}" ]; then
    echo -e "not a file"
    echo -e "${folder}"
    fBasename=$(basename "${folder}")
    echo -e "${fBasename} ---"
    if [ ! -f "$fBasename".mp4 ]; then
      # maintain aspect ratio
      # ffmpeg -r 24 -i "${folder}/%04d.png" -c:v libx264 -q:v 0 -g 1 -vf fps=24 -pix_fmt yuv420p ${fBasename}.mp4
      
      # 4:3 aspect ratio
      ffmpeg -r 24 -i "${folder}/%04d.png" -c:v libx264 -q:v 0 -g 1 -vf fps=24 -filter:v "crop=960:in_h" -pix_fmt yuv420p ${fBasename}.mp4
    fi
  fi
done
