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

echo "Go to the ${btplayerdir}/inlife_puppet directory"
cd "${btplayerdir}"/inlife_puppet

echo "Pull vosp_sim and cms_static_content from git by using ./doGitPullAll.sh"
./doGitPullAll.sh

echo "Go back to the youview-btplayer directory"
cd ../youview-btplayer

echo "submodule init and update for youview"
git submodule init
git submodule update


