#!/usr/bin/env bash

btplayerdir=$1

echo "Check ${btplayerdir}"
if [ ! -d "${btplayerdir}" ]; then
    mkdir "${btplayerdir}"
fi

cd "${btplayerdir}" || { printf "cd failed, exiting\n" >&2;  return 1; }

youview_btplayer="https://gitlab.tools.btcsp.co.uk/tv/inlife_puppet.git"
inlife_puppet="https://gitlab.tools.btcsp.co.uk/tv/youview-btplayer.git"

echo "Youview Btplayer cloning in progress..."

git clone "${youview_btplayer}"

echo "Youview Btplayer cloning completed"

echo "inlife puppet cloning in progress..."

git clone "${inlife_puppet}"

echo "Inlife Puppet cloning completed"
