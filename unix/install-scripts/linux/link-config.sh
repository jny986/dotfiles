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

INSTALLPATH=$(pwd)/install-scripts/linux

# Setup Config Files
info "Setting up config files"

ITEM=.zsh

info "Processing $ITEM dir"

if ! $INSTALLPATH/link-dir.sh $ITEM ; then
    error "Failed to link $ITEM dir"
    exit 1
fi

ITEM=.zshenv

info "Processing $ITEM file"

if ! $INSTALLPATH/link-file.sh $ITEM ; then
    error "Failed to link $ITEM file"
    exit 1
fi

ITEM=.zshrc

info "Processing $ITEM file"

if ! $INSTALLPATH/link-file.sh $ITEM ; then
    error "Failed to link $ITEM file"
    exit 1
fi