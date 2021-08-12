source $HOME/.config/nvim/config/plugins.vim
source $HOME/.config/nvim/config/init.vim
source $HOME/.config/nvim/config/statusline.vim
source $HOME/.config/nvim/config/keybindings.vim
source $HOME/.config/nvim/config/ale.vim " Needed with lsp?

source $HOME/.config/nvim/config/tagbar.vim
source $HOME/.config/nvim/config/treesitter.vim
source $HOME/.config/nvim/config/lsp.vim
source $HOME/.config/nvim/config/compe.vim
source $HOME/.config/nvim/config/telescope.vim
source $HOME/.config/nvim/config/nvim-tree.vim
if filereadable("$HOME/builds/vlc/extras/analyser/vlc.vim")
    source $HOME/builds/vlc/extras/analyser/vlc.vim
endif
