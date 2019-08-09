#!/usr/bin/env bash

NODE=`ps aux |grep node |grep -v grep |awk '{print $2}'`
#[ -n "$NODE" ] && "kill node ..." && echo $NODE|xargs kill
[ -n "$NODE" ] && echo "kill node $NODE ..." && echo $NODE|xargs kill

SRS=`ps aux |grep srs |grep -v grep |awk '{print $2}'`
#[ -n "$SRS" ] && "kill srs ..." && echo $SRS|xargs kill
[ -n "$SRS" ] && echo "kill srs $SRS ..." && echo $SRS|xargs kill

