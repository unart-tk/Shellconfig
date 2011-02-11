#!/bin/sh

set -u


cwd=`pwd`

steroidshell="$cwd/steroidshell"

[ -n "$steroidshell" ] &&
for cfs in "$steroidshell"/*; do
  [ -n "$cfs" ] &&
  for f in "$cfs"/*; do
    [ -f "$f" ] && {
      fn=$(basename $f)
      rm -f $HOME/.$fn
      ln -s $f $HOME/.$fn
    }
  done
done

