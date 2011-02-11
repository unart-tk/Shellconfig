#!/bin/sh

cwd=`pwd`

shell="$cwd/shell"

[ -n "$shell" ] &&
for f in "$shell"/*; do
  [ -f "$f" ] && {
    fn=$(basename $f)
    rm -f $HOME/.$fn
    ln -s $f $HOME/.$fn
  }


done

