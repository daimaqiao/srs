#!/usr/bin/env bash

ME=`realpath $0`
LOCAL=`dirname $ME`

cd $LOCAL
for one in `ls *.pid 2>/dev/null || true`; do
	PID=`cat $one`
	CONF=`ls -1t *.conf |head -n1`
	SRS=`ps aux |grep "./objs/srs -c ./$CONF" |grep -v grep |awk '{print $2}' | grep $PID`

	if [ -n "$SRS" ]; then
		echo "Kill srs $SRS ..."
		kill $SRS
	else
		echo "Bad pid $PID"
	fi

	rm $one

	ps aux |grep "./objs/srs -c ./$CONF" |grep -v grep
done

