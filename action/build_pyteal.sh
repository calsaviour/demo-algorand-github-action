#!/bin/bash

COMMAND=""

# get parameters
while getopts c: flag
do
  case "${flag}" in
    c) COMMAND=${OPTARG};;
  esac
done

echo "The following command has been set: ${COMMAND}"

./sandbox ${COMMAND} testnet
./sandbox -v

cat sandbox.log

echo ::set-output name=command-executed::$COMMAND

exit 0