call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/promptline.vim'

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

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" RUST
Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
call plug#end()
