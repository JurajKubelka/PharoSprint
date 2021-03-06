#!/bin/bash

export ERR_BUILD=1

# build image and change files and compress them into one ZIP file
# ( cd scripts && ./build.sh -d 64/60+vm -cz -n PharoSprint )
# if [[ "$?" != 0 ]] ; then
#     echo "ERROR: unsuccessfull build" >&2
#     exit $ERR_BUILD
# fi

( cd scripts && ./build.sh -dcz 60+vm PharoSprint )
if [[ "$?" != 0 ]] ; then
    echo "ERROR: unsuccessfull 32bit build" >&2
    exit $ERR_BUILD
fi

( cd scripts && ./build.sh -dcz 64/60+vm PharoSprint )
if [[ "$?" != 0 ]] ; then
    echo "ERROR: unsuccessfull 64bit build" >&2
    exit $ERR_BUILD
fi

mv ./scripts/build/*/*.zip ./scripts/build/
ls -la ./scripts/build/*.zip

# set version and commit id for the bintray configuration
echo "---"
echo "$TRAVIS_COMMIT_MESSAGE"
ONELINE_COMMIT_MESSAGE="$(echo "$TRAVIS_COMMIT_MESSAGE" | sed -e 's/"/\\"/g' -e :a -e N -e '$!ba' -e 's/\n/\\n/g' | tr '\n\r' '..')"
echo "---"

# set package name

if [[ -z "$TRAVIS_TAG" ]] ; then
    PACKAGE_NAME=build
else
    PACKAGE_NAME=release
fi

# create bintray configuration
cat <<EOF | tee .bintray.json
{
    "package": {
        "name": "${PACKAGE_NAME}",
        "repo": "PharoSprint",
	"subject": "jurajkubelka"
    },
    "version": {
        "name": "${REVISION}",
        "desc": "Automatic build of the GitHub commit ${TRAVIS_COMMIT}.\n\nCommit message: ${ONELINE_COMMIT_MESSAGE}"
    },
    "files": [
        {
	    "includePattern": "./scripts/build/(PharoSprint.*\\.zip)", 
	    "uploadPattern": "\$1", 
	    "matrixParams": { "override": 1 }
	}
    ],
    "publish": true
}
EOF
echo "---"
