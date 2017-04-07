#!/bin/bash

# build image and change files and compress them into one ZIP file
( cd scripts && ./build.sh -6cz -n PharoSprint )

# set version and commit id for the bintray configuration
# note that sed -E part does not work on OS X, as we deploy only on Linux, we do not care
ONELINE_MESSAGE="$(echo "$TRAVIS_COMMIT_MESSAGE" | sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g' | sed -e 's/"/\\"/g')"
sed -i.bak -e 's/$Rev\$/'"$REVISION"'/' -e  's/$Commit\$/'"$TRAVIS_COMMIT"'/' -e 's/$CommitMessage\$/'"$ONELINE_MESSAGE"'/' .bintray.json
