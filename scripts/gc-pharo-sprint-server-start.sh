#!/bin/bash
# Starting script for gc.dcc.uchile.cl server
# It runs MQTTChat client that listen to #sprint topic and keem (in memory, not persistent storage)
# and share user activities, e.g., proposed, taken, done cases
# It should be copied to $HOME/bin directory.

# There are some problems with locale. This is a fix.
export LC_ALL=C

WORKDIR="/home/jkubelka/pharo-sprint-server/PharoSprint/scripts"
CMD="./build.sh"

cd "$WORKDIR" || exit 2

LOG="pharo-sprint-server.log"

$CMD -r 60+vm PharoSprintServer >> "$LOG" 2>&1
