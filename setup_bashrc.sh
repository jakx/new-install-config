#!/usr/bin/env bash
#Jack Daines
#https://github.com/jakx
#A script to setup bashrc
#Sat Apr 26 22:13:21 PDT 2014
HOME=~


#set up shortcuts
if ! grep -q 'alias vib=' $HOME/.bashrc ; then
    echo -e "alias vib='vi $HOME/.bashrc'" >> $HOME/.bashrc
fi

if ! grep -q 'alias sob=' $HOME/.bashrc ; then
    echo -e "alias sob='source $HOME/.bashrc'" >> $HOME/.bashrc
fi

if ! grep -q 'alias psmem=' $HOME/.bashrc ; then
    echo -e "alias pscmem='ps aux | sort -k 4,4'" >> $HOME/.bashrc
fi

if ! grep -q 'alias pscpu=' $HOME/.bashrc ; then
    echo -e "alias pscpu='ps aux | sort -k 3,3'" >> $HOME/.bashrc
fi
