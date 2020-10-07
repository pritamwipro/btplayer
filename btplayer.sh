#!/usr/bin/env bash

btplayerdir=$1

echo "Check ${btplayerdir}"
if [ ! -d "${btplayerdir}" ]; then
    mkdir "${btplayerdir}"
fi