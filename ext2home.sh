#!/bin/sh

set -u


cwd=`pwd`

extfiles="$cwd/extfiles"

[ -n "$extfiles" ] &&
for cfs in "$extfiles"/*; do
  [ -n "$cfs" ] &&
  for f in "$cfs"/*; do
    [ -f "$f" ] && {
      fn=$(basename $f)
      rm -f $HOME/.$fn
      ln -s $f $HOME/.$fn
    }
  done
done

