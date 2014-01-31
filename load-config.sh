#!/bin/bash

if [[ ! -n "$B2G_DIR" ]]; then
  B2G_DIR=$(cd `dirname $0`; pwd)
fi

. "$B2G_DIR/.config"
if [ $? -ne 0 ]; then
	echo Could not load .config. Did you run config.sh?
	exit -1
fi

if [ -f "$B2G_DIR/.userconfig" ]; then
	. "$B2G_DIR/.userconfig"
fi

# Use default Gecko location if it's not provided in config files.
if [ -z $GECKO_PATH ]; then
  GECKO_PATH=$B2G_DIR/gecko
fi
