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

if ! grep -q "txtblk" $HOME/.bashrc ; then
    echo -e "
        txtblk='\033[0;30m' # Black - Regular
        txtred='\033[0;31m' # Red
        txtgrn='\033[0;32m' # Green
        txtylw='\033[0;33m' # Yellow
        txtblu='\033[0;34m' # Blue
        txtpur='\033[0;35m' # Purple
        txtcyn='\033[0;36m' # Cyan
        txtwht='\033[0;37m' # White
        bldblk='\033[1;30m' # Black - Bold
        bldred='\033[1;31m' # Red
        bldgrn='\033[1;32m' # Green
        bldylw='\033[1;33m' # Yellow
        bldblu='\033[1;34m' # Blue
        bldpur='\033[1;35m' # Purple
        bldcyn='\033[1;36m' # Cyan
        bldwht='\033[1;37m' # White
        unkblk='\033[4;30m' # Black - Underline
        undred='\033[4;31m' # Red
        undgrn='\033[4;32m' # Green
        undylw='\033[4;33m' # Yellow
        undblu='\033[4;34m' # Blue
        undpur='\033[4;35m' # Purple
        undcyn='\033[4;36m' # Cyan
        undwht='\033[4;37m' # White
        bakblk='\033[40m'   # Black - Background
        bakred='\033[41m'   # Red
        bakgrn='\033[42m'   # Green
        bakylw='\033[43m'   # Yellow
        bakblu='\033[44m'   # Blue
        bakpur='\033[45m'   # Purple
        bakcyn='\033[46m'   # Cyan
        bakwht='\033[47m'   # White
        txtrst='\033[0m'    # Text Reset

        PS1='[\[$txtgrn\]\u\[$txtwht\]@\[$bldpur\]\h\[$txtwht\]:\[$txtylw\]\W\[$txtrst\]] \$ '
        " >> $HOME/.bashrc
fi
