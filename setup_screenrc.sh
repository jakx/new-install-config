#Jack Daines
#https://github.com/jakx
#A script to setup vimrc
#Sat Apr 26 22:37:06 PDT 2014

touch $HOME/.screenrc
#setup status bar
if ! grep -q 'caption always' $HOME/.screenrc; then
    echo -e '# Here comes the pain...
caption always "%{=b dw}:%{-b dw}:%{=b dk}[ %{-b dw}%{-b dg}$USER%{-b dw}@%{-b dg}%H %{=b dk}] [ %= %?%{-b dg}%-Lw%?%{+b dk}(%{+b dw}%n:%t%{+b dk})%?(%u)%?%{-b dw}%?%{-b dg}%+Lw%? %{=b dk}]%{-b dw}:%{+b dw}:"

sorendition "-b dw"' >> $HOME/.screenrc
fi
