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

if [ -d ~/$ITEM ]; then
    info "Deleting $ITEM dir from Home"

    if ! rm -rf ~/$ITEM ; then
        error "Failed to delete $ITEM dir"
        exit 1
    fi
fi

if [ ! -L !/$ITEM ]; then
    info "Linking $ITEM dir"

    if ! ln -s $SOURCEPATH/$ITEM ~ ; then
        error "Failed to Link $ITEM dir"
        exit 1
    fi
fi