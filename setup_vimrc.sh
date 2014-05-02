#Jack Daines
#https://github.com/jakx
#A script to setup vimrc
#Sat Apr 26 22:37:06 PDT 2014

touch $HOME/.vimrc
touch $HOME/.viminfo
#turn tabs to spaces
if ! grep -q ':set expandtab' $HOME/.vimrc; then
    echo -e ':set expandtab' >> $HOME/.vimrc
fi

#set tabs to 4 spaces
if ! grep -q ':set tabstop=4' $HOME/.vimrc; then
    echo -e ':set tabstop=4' >> $HOME/.vimrc
fi

#setup viminfo to store history
if ! grep -q 'set viminfo' $HOME/.vimrc; then
    echo -e $'set viminfo=\'10,\"100,:20,%,n~/.viminfo' >> $HOME/.vimrc
fi


#function to restore cursor
if ! grep -q 'function! ResCur()' $HOME/.vimrc; then
    echo -e $'function! ResCur()\n  if line("\'\"") <= line("$")\n    normal! g`"\n    return 1\n  endif\nendfunction' >> $HOME/.vimrc
fi


#call function to restore cursor upon entry
if ! grep -q 'augroup resCur' $HOME/.vimrc; then
    echo -e $'augroup resCur\n  autocmd!\n  autocmd BufWinEnter * call ResCur()\naugroup END' >> $HOME/.vimrc
fi

#define capital Q to quit
if ! grep -q 'command! -bar -bang Q quit<bang>' $HOME/.vimrc; then
    echo -e $'command! -bar -bang Q quit<bang>' >> $HOME/.vimrc
fi
:

