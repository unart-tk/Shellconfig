#!/bin/sh

cwd=`pwd`

dots="$cwd/shellfiles"

[ -n "$dots" ] &&
for f in "$dots"/*; do
  [ -f "$f" ] && {
    fn=$(basename $f)
    rm -f $HOME/.$fn
    ln -s $f $HOME/.$fn
  }


done

