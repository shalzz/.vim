set number " show line numbers
set clipboard+=unnamedplus
"" Four space wide tab
"set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

"" Tab as four spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
let &titlestring = expand("%:p")
set title
colorscheme perun
set termguicolors

"" Enable filetype detection:
filetype on
filetype plugin on
filetype indent on " file type based indentation

"" Use actual tab characters in Makefile
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

let g:rustfmt_autosave = 1

set spell spelllang=en
