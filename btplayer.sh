#!/usr/bin/env bash
echo "NEW to the $1 directory"

if [ ! -d "$btplayerdir" ]; then
    mkdir "$btplayerdir"
fi

cd "$btplayerdir" || { printf "cd failed, exiting\n" >&2;  return 1; }