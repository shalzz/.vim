ROOT_DIR:=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

common:
	mkdir -p ~/.config/nvim
	ln -sf ${ROOT_DIR}/config ~/.config/nvim
	ln -sf ${ROOT_DIR}/settings.json ~/.config/nvim/

install-nvim: common
	mkdir -p ~/.local/share/nvim/site
	ln -sf ${ROOT_DIR}/init.vim ~/.config/nvim/
	ln -sf ${ROOT_DIR}/autoload/ ~/.local/share/nvim/site/

install-vim: common
	ln -s ${ROOT_DIR}/init.vim ~/.vim/.vimrc
