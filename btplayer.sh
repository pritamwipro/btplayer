#!/usr/bin/env bash

if [ ! -d "$HOME"/git-sources ]; then
    mkdir "$HOME"/git-sources
fi

cd "$HOME"/git-sources || { printf "cd failed, exiting\n" >&2;  return 1; }

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
      cd "$HOME"/git-sources || { printf "cd failed, exiting\n" >&2; unset ans; return 1; }
fi

unset ans