#!/bin/env bash

RED='\033[0;31m'
BLUE='\033[0;34m'
CLEAR='\033[0m'

function error {
    echo -e "${RED}$1${CLEAR}"
}

function info {
    echo -e "${BLUE}$1${CLEAR}"
}

SOURCEPATH=$(pwd)

ITEM=$1

if [ -f ~/$ITEM ]; then
    info "Deleting $ITEM file from Home"
    if ! rm -f ~/$ITEM ; then
        error "Failed to delete $ITEM file"
        exit 1
    fi
fi

if [ ! -L !/$ITEM ]; then
    info "Linking $ITEM file"

    if ! ln -s $SOURCEPATH/$ITEM ~/$ITEM ; then
        error "Failed to Link $ITEM file"
    fi
fi
