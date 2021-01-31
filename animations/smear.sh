#!/bin/bash

# http://oioiiooixiii.blogspot.com/2016/08/ffmpeg-recursive-effects-of-stacking.html

ffmpeg \
   -i "${1}" \
   -vf \
   "
      scale=-2:720,
      tblend=all_mode=difference128,
      tblend=all_mode=difference128,
      tblend=all_mode=difference128,
      spp=4:10,
      tblend=all_mode=average,
      tblend=all_mode=difference128,
      tblend=all_mode=difference128,
      tblend=all_mode=difference128,
      spp=4:10,
      tblend=all_mode=average,
      tblend=all_mode=difference128,
      tblend=all_mode=difference128,
      tblend=all_mode=difference128,
      spp=4:10,
      tblend=all_mode=average,
      tblend=all_mode=difference128,
      tblend=all_mode=difference128,
      tblend=all_mode=difference128
   " "${1}_smear.mp4"
