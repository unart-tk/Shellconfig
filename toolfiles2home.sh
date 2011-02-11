#!/bin/sh

set -u


cwd=`pwd`

confs="$cwd/toolfiles"

[ -n "$confs" ] &&
for cfs in "$confs"/*; do
  [ -n "$cfs" ] &&
  for f in "$cfs"/*; do
    [ -f "$f" ] && {
      fn=$(basename $f)
      rm -f $HOME/.$fn
      ln -s $f $HOME/.$fn
    }
  done
done

