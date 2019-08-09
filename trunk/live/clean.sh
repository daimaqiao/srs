#!/usr/bin/env bash

SRS=`ps aux |grep srs |grep -v grep |awk '{print $2}'`
 [ -n "$SRS" ] && echo "SRS is running, abort" && exit 1

 rm -f player/live/*.m3u8
 rm -f player/live/*.ts
 rm -f player/live/*.tmp

