#!/usr/bin/env bash

btplayerdir=$1

echo "Check ${btplayerdir}"
if [ ! -d "${btplayerdir}" ]; then
    mkdir "${btplayerdir}"
fi

cd "${btplayerdir}" || { printf "cd failed, exiting\n" >&2;  return 1; }

youview_btplayer="https://github.com/pritamwipro/kth.git"
youview_btplayer2="https://gitlab.tools.btcsp.co.uk/tv/youview-btplayer.git"

git clone "${youview_btplayer}"
git clone "${youview_btplayer2}"
