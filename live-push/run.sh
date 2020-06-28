#!/usr/bin/env bash

ME=`realpath $0`
LOCAL=`dirname $ME`

cd $LOCAL
CONF=`ls -1t *.conf |head -n1`
echo "Run with conf $CONF"

mkdir -p logs
./objs/srs -c ./$CONF

