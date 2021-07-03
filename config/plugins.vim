call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-obsession'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'qpkorr/vim-bufkill'
Plug 'westeri/asl-vim'
Plug 'sgur/vim-editorconfig'
Plug 'iCyMind/NeoSolarized'

" Color Schemes
Plug 'aradunovic/perun.vim'

Plug 'w0rp/ale'

" Completion plugins
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'

" C/C++
Plug 'majutsushi/tagbar'

" Markdown
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" RUST
Plug 'rust-lang/rust.vim'

" Solidity
Plug 'quilt/vim-etk', { 'branch': 'main' }

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
call plug#end()
