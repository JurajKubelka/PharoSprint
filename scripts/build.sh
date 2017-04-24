#!/bin/bash

export ERR_NOARGS=1
export ERR_DIR=2
export ERR_MISSING_FILE=3
export ERR_NOSERVER=4
export ERR_ZIP_LS=5
export ERR_ZIP_COMPRESS=6
export WORKING_DIR=build
export SCRIPT_DIR="$PWD"

### Define revision number ###

if [[ -z "$REVISION" ]] ; then
    if [[ -n "$TRAVIS_BUILD_NUMBER" ]] ; then 
	BUILD_NUMBER="-$TRAVIS_BUILD_NUMBER"
    else
	BUILD_NUMBER="$(date -u +%H%M%S)"
    fi
    REVISION="$(date -u +%Y%m%d)${BUILD_NUMBER}"
    export REVISION
fi

### Define GIT branch of GIT commit id ###

if [[ -n "$TRAVIS_COMMIT" ]] ; then
    BRANCH="$TRAVIS_COMMIT"
elif git rev-parse --is-inside-work-tree > /dev/null 2>&1 ; then
    BRANCH="$(git rev-parse HEAD)"
else
    BRANCH="master"
fi
export BRANCH


function help {
    echo "USAGE: $0 <arguments> <Pharo VM name> <Pharo image name>"
    echo "           <Pharo VM name> is the Pharo 6.0 (image, changes, VM)"
    echo "           it is used as 'get.pharo.org/<pharo name>'"
    echo "           <Pharo image name> to configure, compress, and/or run"
    echo "           it is used as 'configuration-<image name>.st'"
    echo "       -d  download <Pharo VM name> (image, changes, VM)"
    echo "           it is used as 'get.pharo.org/<pharo name>'"
    echo "       -c  configure <Pharo image name> image"
    echo "       -z  compress <Pharo image name> image as ZIP"
    echo "       -r  run the <Pharo image name> image"
    echo " <Pharo VM name> can be:"
    echo "       60+vm, 64/60+vm, etc"
    echo " <Pharo image name> can be:"
    echo "       PharoSprint          Pharo Sprint Client"
    echo "       PharoSprintServer    Pharo Sprint Server"
    echo ""
}

function ensureWorkingDirectory {
    if mkdir -p "$WORKING_DIR" ; then
	cd "$WORKING_DIR"
    else
	echo "Cannot create working directory '$WORKING_DIR'." >&2
	exit $ERR_DIR
    fi
}

function downloadPharoImageAndVM {
    # Downloads Pharo.image Pharo.changes, pharo, pharo-ui, and pharo-vm directory
    # $1 defines Pharo version (40, 50, 60)
    local zeroScript="$(which curl wget | head -1)"
    local PVERSION=${1:-60+vm}

    case "$zeroScript" in
	*curl*)
	    curl get.pharo.org/$PVERSION | bash
	    ;;
	*wget*)
	    wget -O- get.pharo.org/$PVERSION | bash
	    ;;
	*)
	    echo default
	    ;;
    esac
}

function runPharoScript {
    # $1 Pharo image
    # $2 Pharo script
    PHARO="./pharo"
    if [ ! -r "$PHARO" ] ; then
	echo "Missing Pharo VM called $PHARO in $PWD directory." >&2
	exit $ERR_MISSING_FILE
    fi
    if [ ! -r "$1" ] ; then
	echo "Missing Pharo image called $1 in $PWD directory." >&2
	exit $ERR_MISSING_FILE
    fi
    if [ ! -r "$2" ] ; then
	echo "Missing script file '$2' in $PWD directory." >&2
	exit $ERR_MISSING_FILE
    fi
    $PHARO "$1" --no-default-preferences "$2"
}

function prepareScript {
    # $1 <image name>
    sed -e 's/$REVISION\$/'"$REVISION"'/' -e  's/$BRANCH\$/'"$BRANCH"'/' "$SCRIPT_DIR/configuration-${1}.st" > "./configuration-${1}.st"
}
    
function configure {
    # $1 <image name>
    if [ ! -r "$SCRIPT_DIR/configuration-${1}.st" ] ; then
	echo "Configuration file does not exists." >&2
	exit $ERR_MISSING_FILE
    fi
    prepareScript "$1"
    runPharoScript Pharo.image "./configuration-${1}.st"
}

function compressImage {
    # $1 <image name>
    if ! ls ${1}*${REVISION}* ; then
	exit $ERR_ZIP_LS
    fi
    FILENAME="$(ls ${1}*${REVISION}* | head -1)"
    if ! zip "${FILENAME%.*}.zip" ${1}*${REVISION}*.image ${1}*${REVISION}*.changes ; then
	exit $ERR_ZIP_COMPRESS
    fi
}

function run {
    # $1 <server-name>
    runPharoScript "${1}.image" "$SCRIPT_DIR/run-${1}.st"
}

# Parse allowed parameters
args=$(getopt dcrhz $*)

if [ $? != 0 ] ; then
    help
    exit $ERR_NOARGS
fi

set -- $args

for param
do
    case "$param"
    in
	-d)
	    ARG_DOWNLOAD=true
	    ARG_OK=true
	    shift
	    ;;
	-r)
	    ARG_RUN=true
	    ARG_OK=true
	    shift
	    ;;
	-c)
	    ARG_CONFIGURE=true
	    ARG_OK=true
	    shift
	    ;;
	-z)
	    ARG_ZIP=true
	    ARG_OK=true
	    shift
	    ;;
	-h)
	    ARG_HELP=true
	    shift
	    ;;
	--)
	    shift
	    break
	    ;;
    esac
done

if [ "$ARG_HELP" ] ; then
    help
    exit 0
fi

# Check we have <Pharo VM name> and <Pharo image name> arguments
if [ "$#" != 2 ] ; then
    echo "You have to decide what Pharo VM and Pharo image to use." >&2
    help
    exit $ERR_NOARGS
fi

# Set Pharo VM and Pharo Image
ARG_VM="$1"
ARG_IMAGE="$2"

if [ ! "$ARG_OK" ] ; then
    echo "You should decide what to do." >&2
    help
    exit $ERR_NOARGS
fi

WORKING_DIR="${WORKING_DIR}/${ARG_VM/\//-}"
ensureWorkingDirectory

if [ "$ARG_DOWNLOAD" ] ; then
    echo
    echo "### Download Pharo Image and VM of version '$ARG_VM' ###"
    echo
    downloadPharoImageAndVM "$ARG_VM"
fi

if [ "$ARG_CONFIGURE" ] ; then
    echo
    echo "### Configure "$ARG_IMAGE" Image ###"
    echo
    configure "$ARG_IMAGE"
fi

if [ "$ARG_ZIP" ] ; then
    echo
    echo "### Compress "$ARG_IMAGE" Image ###"
    echo
    compressImage "$ARG_IMAGE"
fi

if [ "$ARG_RUN" ] ; then
    echo
    echo "### Run "$ARG_IMAGE" Image ###"
    echo
    run "$ARG_IMAGE"
fi
