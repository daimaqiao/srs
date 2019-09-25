#!/usr/bin/env bash

COUNTER=`ps aux |grep "node .* srs-live-counter" |grep -v grep |grep node |awk '{print $2}'`
[ -n "$COUNTER" ] && echo "kill node $COUNTER ..." && echo $COUNTER |xargs kill
echo "Restart counter ..."
nohup ./counter.sh > log/counter &

