#!/usr/bin/env bash

## tests fails with jon-severinsson binaries (version 0.10.7)
# add-apt-repository -y ppa:jon-severinsson/ffmpeg
# apt-get -y -qq update
# apt-get -y -qq install ffmpeg
if [ $(arch) == "i686" ]; then
  wget -P /tmp http://ffmpeg.gusari.org/static/32bit/ffmpeg.static.32bit.latest.tar.gz
  tar -xvf /tmp/ffmpeg.static.32bit.lates.tar.gz -C /usr/local/bin
else
  wget -P /tmp http://ffmpeg.gusari.org/static/64bit/ffmpeg.static.64bit.lates.tar.gz
  tar -xvf /tmp/ffmpeg.static.64bit.lates.tar.gz -C /usr/local/bin
fi

