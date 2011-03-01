#!/bin/sh

cwd=`pwd`

shellfiles="$cwd/shellfiles"
bashfiles="$cwd/bashfiles"

[ -n "$bashfiles" ] &&
for f in "$bashfiles"/*; do
  [ -f "$f" ] && {
    fn=$(basename $f)
    rm -f $HOME/.$fn
    ln -s $f $HOME/.$fn
  }
done

[ -n "$shellfiles" ] &&
for f in "$shellfiles"/*; do
  [ -f "$f" ] && {
    fn=$(basename $f)
    rm -f $HOME/.$fn
    ln -s $f $HOME/.$fn
  }
done

