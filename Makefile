ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

install-nvim:
	ln -sf ${ROOT_DIR}/init.vim ~/.config/nvim/
	ln -sf ${ROOT_DIR}/autoload/ ~/.local/share/nvim/site/

install-vim:
	ln -s ${ROOT_DIR}/init.vim ~/.vim/.vimrc
