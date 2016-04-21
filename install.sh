#!/usr/bin/env bash

FILES=$(find . -not -path '*/\.*' ! -iname ".*" ! -iname "install.sh")

for f in $FILES; do
  if [ -d $f ]; then
    cmd="mkdir -p $HOME/`echo $f | sed 's/\.\//\./g'`"
    echo $cmd
    eval $cmd
  else
    cmd="ln -f -s ${PWD}${f#.} $HOME/`echo $f | sed 's/\.\//\./g'`"
    echo $cmd
    eval $cmd
  fi
done

