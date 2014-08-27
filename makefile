remap_keymap:
	./remap_keymap.sh

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

install: setup_bashrc setup_vimrc remap_keymap setup_xmodmap
