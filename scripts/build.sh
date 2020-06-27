#!/usr/bin/env bash

set -e

ME=`realpath $0`
SCRIPTS=`dirname $ME`
ROOT=`dirname $SCRIPTS`

TRUNK="$ROOT/trunk"
LOCAL="$ROOT/local"

cd $TRUNK

./configure --prefix=$LOCAL

make && make install

cd $ROOT
git submodule init && git submodule update
cd $SCRIPTS

FFMPEG=ffmpeg-4.1-bin
[ ! -e ../../$FFMPEG ] && \
ln -s ../../$FFMPEG ../local/objs/$FFMPEG

HOME_DIR=../local/objs/nginx/html
mkdir -p $HOMNE_DIR
cp -R ../home/* $HOME_DIR/
