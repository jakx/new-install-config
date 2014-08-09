#!/usr/bin/env bash
#Jack Daines
#https://github.com/jakx
#A script to turn caps lock into another shift
#Sat Apr 26 22:13:21 PDT 2014
HOME=~


#set up shortcuts
if ! grep -q 'remove Lock = Caps_Lock' $HOME/.Xmodmap; then
    echo -e "remove Lock = Caps_Lock
keysym Caps_Lock = Shift_L
" >> $HOME/.Xmodmap
fi

