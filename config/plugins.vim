call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/promptline.vim'
Plug 'scrooloose/nerdtree'
Plug 'aradunovic/perun.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'edkolev/tmuxline.vim'
Plug 'tpope/vim-obsession'

" C/C++
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'

" RUST
Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
call plug#end()
