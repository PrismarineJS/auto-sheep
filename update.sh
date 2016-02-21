#!/bin/bash

cd `dirname $0`
cd dazed-sheep
status=`git pull`
echo $status
pid=`ps -ef | awk '$8=="node" && $9=="app.js" {print $2}'`
if ([ "$status" != "Already up-to-date." ] && [ "$status" != "" ] ) || [ "$ALWAYS_UPDATE" == "1" ] || [ "$pid" == "" ]
then 
	echo "installing and starting "
	echo "status: $status"
	echo "pid: $pid"
	npm install
	if [[ "$pid" != "" ]] ; then kill ${pid} ; fi
	screen -S dazed-sheep -d -m ../start.sh
fi
