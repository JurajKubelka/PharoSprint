#!/bin/bash

export ERR_BUILD=1

# build image and change files and compress them into one ZIP file
( cd scripts && ./build.sh -6cz -n PharoSprint )
if [[ "$?" != 0 ]] ; then
    echo "ERROR: unsuccessfull build" >&2
    exit $ERR_BUILD
fi

# set version and commit id for the bintray configuration
# note that sed -E part does not work on OS X, as we deploy only on Linux, we do not care
echo "---"
echo "$TRAVIS_COMMIT_MESSAGE"
set -x
ONELINE_MESSAGE="$(echo "$TRAVIS_COMMIT_MESSAGE" | sed -e :a -e N -e '$!ba' -e 's/\n/\\n/g' -e 's/"/\\"/g' | tr '\n\r' '..')"
set +x
echo "---"
echo "$ONELINE_MESSAGE"
echo "---"
sed -i.bak -e 's/$Rev\$/'"$REVISION"'/' -e  's/$Commit\$/'"$TRAVIS_COMMIT"'/' -e 's/$CommitMessage\$/'"$ONELINE_MESSAGE"'/' .bintray.json
