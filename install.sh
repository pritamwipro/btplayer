#!/usr/bin/env bash
############################
# This script creates symlinks from the home directory to any desired btplayerfiles in ${homedir}/btplayer
# And also installs Homebrew Packages
# And sets BT Player preferences
############################

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
    exit 1
fi

homedir=$1

# btplayerfiles directory
btplayerdir=${homedir}/btplayer

# list of files/folders to symlink in ${homedir}
files="private"

# change to the btplayerfiles directory
echo "Changing to the ${btplayerdir} directory"
mkdir -p ${btplayerdir}
# cd ${btplayerdir}
echo "...done"

# create symlinks (will overwrite old btplayerfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${btplayerdir}/.${file} ${homedir}/.${file}
done

# Download Git Auto-Completion
curl "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash" > ${homedir}/.git-completion.bash

# Run the Homebrew Script
# ./brew.sh

# Run the BT Player Script
./btplayer.sh