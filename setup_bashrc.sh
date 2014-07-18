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

#alias rm to trash -- sudo apt-get install trash-cli
if ! grep -q 'alias rm=trash' $HOME/.bashrc ; then
    echo -e "alias rm=trash" >> $HOME/.bashrc
fi


if ! grep -q 'function secure_chromium {' $HOME/.bashrc ; then
    echo -e "function secure_chromium {
    port=4712
    export SOCKS_SERVER=localhost:$port
    export SOCKS_VERSION=5
    chromium-browser &
    exit
}
" >> $HOME/.bashrc
fi

if ! grep -q "alias sshtunnel='ssh -TND 4712 bittorrent -vvv'" $HOME/.bashrc ; then
    echo -e "alias sshtunnel='ssh -TND 4712 bittorrent -vvv'" >> $HOME/.bashrc
fi
