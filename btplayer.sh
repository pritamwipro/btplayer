#!/usr/bin/env bash

btplayerdir=$1

echo "Check ${btplayerdir}"
if [ ! -d "${btplayerdir}" ]; then
    mkdir "${btplayerdir}"
fi

cd "${btplayerdir}" || { printf "cd failed, exiting\n" >&2;  return 1; }

inlife_puppet="https://gitlab.tools.btcsp.co.uk/tv/inlife_puppet.git"
youview_btplayer="https://gitlab.tools.btcsp.co.uk/tv/youview-btplayer.git"

git clone "${inlife_puppet}"
git clone "${youview_btplayer}"

cd "${btplayerdir}"/inlife_puppet

./doGitPullAll.sh

cd ../youview-btplayer

git submodule init

git submodule update


