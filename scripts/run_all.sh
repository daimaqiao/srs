#!/usr/bin/env bash

set -e

ME=`realpath $0`
SCRIPTS=`dirname $ME`
ROOT=`dirname $SCRIPTS`

ALL="live-push live live-edge"

for one in $ALL; do
	$ROOT/$one/run.sh
done

