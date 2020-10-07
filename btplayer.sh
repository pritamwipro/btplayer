#!/usr/bin/env bash

btplayerdir=$1

# Check directory exist or not, if not exists then create
echo "Check ${btplayerdir}"
if [ ! -d "${btplayerdir}" ]; then
    mkdir "${btplayerdir}"
fi

cd "${btplayerdir}" || { printf "cd failed, exiting\n" >&2;  return 1; }

# Clone youview-btplayer
youview_btplayer="https://gitlab.tools.btcsp.co.uk/tv/youview-btplayer.git"
git clone "${youview_btplayer}"

# Clone inlife_puppet
inlife_puppet="https://gitlab.tools.btcsp.co.uk/tv/inlife_puppet.git"
git clone "${inlife_puppet}"

# Go to the ${btplayerdir}/inlife_puppet directory
cd "${btplayerdir}"/inlife_puppet

# Pull vosp_sim and cms_static_content from git by using ./doGitPullAll.sh
./doGitPullAll.sh

# Go back to the youview-btplayer directory
cd ../youview-btplayer

# submodule init and update for youview
git submodule init
git submodule update


