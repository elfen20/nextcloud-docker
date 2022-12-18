#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"
running=$( /usr/bin/docker ps | grep nextcloud-client )
#echo t:$running
if [ -z "$running" ]; then
    make up
else
    echo already running...
fi
