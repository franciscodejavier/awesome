#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

# Programas a ejecutar.
run compton
run xbindkeys
run unclutter
run numlockx
run urxvtd -q
run conky
run xrdb -merge ~/.Xresources
