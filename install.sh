#!/usr/bin/env bash

FILES=$(find . -maxdepth 1 \( ! -iname ".*" ! -iname "install.sh" \))

for f in $FILES; do
  cmd="ln -f -s $PWD${f#.} $HOME/`echo $f | sed 's/\.\//\./g'`"
  echo $cmd
  eval $cmd
done

