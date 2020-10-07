#!/usr/bin/env bash

btplayerdir=$1

echo "Check ${btplayerdir}"
if [ ! -d "${btplayerdir}" ]; then
    mkdir "${btplayerdir}"
fi

cd "${btplayerdir}" || { printf "cd failed, exiting\n" >&2;  return 1; }

youview_btplayer="https://github.com/pritamwipro/kth.git"

# printf "Gitsource: "
# read -r gitsource

git clone "${youview_btplayer}"

# unset gitsource

echo "Please choose from the options bellow"


unset ans