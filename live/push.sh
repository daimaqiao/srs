#!/usr/bin/env bash

RTMP=$1
RTMP1=${RTMP,,}
if [ -z "$RTMP" ] || [ ${RTMP1:0:7} != "rtmp://" ]; then
	echo "USAGE: $0 <push url start with rtmp://>"
	exit 1
fi

for((;;)); do \
        ./objs/ffmpeg/bin/ffmpeg -re -i ./doc/source.200kbps.768x320.flv \
        -vcodec copy -acodec copy \
        -f flv -y $RTMP; \
        sleep 1; \
    done

