#!/bin/bash

COMMAND=""

# get parameters
while getopts v: flag
do
  case "${flag}" in
    c) COMMAND=${OPTARG};;
  esac
done

./sandbox ${COMMAND}


echo ::set-output name=command-executed::$COMMAND

exit 0