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
Plug 'sheerun/vim-polyglot'

" Color Schemes
Plug 'aradunovic/perun.vim'
Plug 'crusoexia/vim-monokai'

Plug 'w0rp/ale'

" C/C++
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'majutsushi/tagbar'
Plug 'octol/vim-cpp-enhanced-highlight'

" Markdown
Plug 'plasticboy/vim-markdown'

" RUST
Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
call plug#end()
