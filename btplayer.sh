#!/usr/bin/env bash

$btplayerdir=$1

if [ ! -d "$btplayerdir" ]; then
    mkdir "$btplayerdir"
fi

cd "$btplayerdir" || { printf "cd failed, exiting\n" >&2;  return 1; }

gitsource="https://gitlab.tools.btcsp.co.uk/tv/youview-btplayer.git"

printf "Gitsource: "
read -r gitsource

git clone "$gitsource"

unset gitsource

echo "Please choose from the options bellow"

echo "1) Go back to your working directory"
echo "2) Go to the 'git-sources' folder"

read -r ans
back="1"
stay="2"
if [ "$ans" = "$back" ]; then
      cd - || { printf "cd failed, exiting\n" >&2; unset ans; return 1; }
elif [ "$ans" = "$stay" ]; then
      cd "$btplayerdir" || { printf "cd failed, exiting\n" >&2; unset ans; return 1; }
fi

unset ans