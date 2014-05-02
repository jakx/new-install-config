add_ctrl_alt_bk:
	./add_ctrl+alt+bk.sh

setup_vimrc:
	./setup_vimrc.sh

setup_bashrc:
	./setup_bashrc.sh

install: setup_bashrc setup_vimrc add_ctrl_alt_bk 
