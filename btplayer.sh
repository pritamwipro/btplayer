#!/usr/bin/env bash
echo "NEW to the $1 directory"

if [ ! -d "$1" ]; then
    mkdir "$1"
fi

cd "$1" || { printf "cd failed, exiting\n" >&2;  return 1; }