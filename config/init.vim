set nocompatible                " Disable vi compatibility
set noerrorbells                " No beeps
set visualbell t_vb=            " Allow visual bell though
set number                      " Show line numbers
set relativenumber              " Use relative numbering
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
syntax on                       " Turn on syntax highlighting.

set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set nowritebackup
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=utf-8              " Set default encoding to UTF-8
set autowrite                   " Automatically save before :next, :make etc.
set autoread                    " Automatically reread changed files without asking me anything
set number                      " show line numbers
set clipboard+=unnamedplus

au FocusLost * :wa              " Set vim to save the file on focus out.

set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats

set noshowmode                  " We show the mode with airline or lightline
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters

set spell spelllang=en          " enable spellcheck

"" Permanent Undo
set undodir=~/.vimdid
set undofile

"" Tab as four spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4
set autoindent
set complete-=i
set showmatch
set smarttab

let &titlestring=expand("%:p")  " file name in terminal title
set title
set termguicolors               " True color support
colorscheme NeoSolarized
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

if (match(system("yq r /home/shalzz/.config/alacritty/alacritty.yml colors.primary"), "*dark") != -1)
    set background=dark
else
    set background=light
endif

"" Enable filetype detection:
filetype on
filetype plugin on
filetype indent on " file type based indentation

"" Use actual tab characters in Makefile
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

let g:rustfmt_autosave = 1
let g:rustfmt_options = '--edition 2018'

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" If linux then set ttymouse
let s:uname = system("echo -n \"$(uname)\"")
if !v:shell_error && s:uname == "Linux" && !has('nvim')
  set ttymouse=xterm
endif

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>
autocmd FileType help wincmd L

" set 80 character line limit
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" =============================================================================
" # Autocommands
" =============================================================================

" Prevent accidental writes to buffers that shouldn't be edited
autocmd BufRead *.orig set readonly
autocmd BufRead *.pacnew set readonly

" Jump to last edit position on opening file
if has("autocmd")
  " https://stackoverflow.com/questions/31449496/vim-ignore-specifc-file-in-autocommand
  au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Help filetype detection
autocmd BufRead *.plot set filetype=gnuplot
autocmd BufRead *.md set filetype=markdown
autocmd BufRead *.lds set filetype=ld
autocmd BufRead *.tex set filetype=tex
autocmd BufRead *.trm set filetype=c
autocmd BufRead *.xlsx.axlsx set filetype=ruby
