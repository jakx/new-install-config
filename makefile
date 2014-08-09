add_ctrl_alt_bk:
	./add_ctrl+alt+bk.sh

setup_vimrc:
	./setup_vimrc.sh
	unzip yankring_180.zip
	mkdir -p .vim/plugin
	mv doc .vim/
	mv plugin/* .vim/plugin/

setup_bashrc:
	./setup_bashrc.sh

setup_xmodmap:
	touch ~/.Xmodmap
	./setup_Xmodmap.sh

install: setup_bashrc setup_vimrc add_ctrl_alt_bk setup_xmodmap
