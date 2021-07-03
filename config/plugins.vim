call plug#begin('~/.local/share/nvim/plugged')

" Decoration and Behaviour
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'qpkorr/vim-bufkill'
Plug 'majutsushi/tagbar'
Plug 'sgur/vim-editorconfig'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'westeri/asl-vim'

" Tmux
Plug 'edkolev/tmuxline.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'

" Color Schemes
Plug 'iCyMind/NeoSolarized'

" Neovim 0.5+ specific
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'neovim/nvim-lspconfig'

" Completion plugins
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'w0rp/ale'

" File search
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

" RUST
Plug 'rust-lang/rust.vim'

" Solidity
Plug 'quilt/vim-etk', { 'branch': 'main' }
Plug 'TovarishFin/vim-solidity'

call plug#end()
