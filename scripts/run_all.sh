#!/usr/bin/env bash

set -e

ME=`realpath $0`
SCRIPTS=`dirname $ME`
ROOT=`dirname $SCRIPTS`

ALL="live-push live live-aac live-edge live-dvr"

for one in $ALL; do
	$ROOT/$one/run.sh
done

