#! /bin/bash
#
# Diffusion youtube avec ffmpeg

# This is the file that streams to YouTube

# I have this set up to run in a crontab on start and then also restart
# the Rasberry Pi every three hours incase of crashing or audio degredation of
# the stream. 

VBR="300k"      # Video Bitrate
FPS="2"         # Frames Per Second
QUAL="veryfast" # FFMPEG Quality (Faster equals less quality)
YOUTUBE_URL=""  # Insert the YouTube Server URL
KEY=""          # Insert the YouTube Livestream Key
IMAGE="" #The Image Displayed as Video Background

ffmpeg \
     -loop 1 -i $IMAGE -f alsa -i pulse -deinterlace  -vf "drawtext=fontfile=/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-R.ttf: \
    text='%{localtime\:%T}': fontcolor=white@0.8: x=7: y=7" -s 380x240 -vcodec libx264 -pix_fmt yuv420p -preset $QUAL -r $FPS -g $(($FPS * 2)) -b:v $VBR \
    -acodec libmp3lame -ar 11025 -threads 6 -qscale 3 -b:a 3000 -bufsize 512k \
    -f flv "$YOUTUBE_URL/$KEY" -nostdin -nostats </dev/null &
