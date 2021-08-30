call plug#begin('~/.local/share/nvim/plugged')

" Decoration and Behaviour
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'qpkorr/vim-bufkill'
Plug 'majutsushi/tagbar'
Plug 'sgur/vim-editorconfig'

Plug 'tpope/vim-fugitive' " Git support
Plug 'tpope/vim-obsession'
Plug 'westeri/asl-vim'

" Tmux
Plug 'edkolev/tmuxline.vim'
Plug 'andersevenrud/compe-tmux'

" Color Schemes
Plug 'iCyMind/NeoSolarized'

" Solidity
Plug 'quilt/vim-etk', { 'branch': 'main' }
Plug 'thesis/vim-solidity'

" Neovim 0.5+ specific
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

" Nvim tree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" File search
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()
