set number
set clipboard+=unnamedplus

" Four space wide tab
"set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

" Tab as four spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

let &titlestring = expand("%:p")
set title
"colorscheme elflord
" Use deoplete.
"let g:deoplete#enable_at_startup = 1

" enable filetype detection:
filetype on
filetype plugin on
filetype indent on " file type based indentation

" use actual tab characters in Makefile
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" Airline config
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:promptline_preset = 'clear'
let g:promptline_theme = 'airline'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_rust_checkers = ['cargo']

let g:rustfmt_autosave = 1

" Initialize plugin system
call plug#begin('/home/shalzz/.local/share/nvim/plugged')

Plug 'vim-syntastic/syntastic'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --js-completer --rust-completer' }

" C/C++
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/promptline.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" RUST
Plug 'rust-lang/rust.vim'

call plug#end()
