let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
" Disable the candidates in Comment/String syntaxes.
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['Comment', 'String'])

let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer', 'member', 'tag', 'file', 'neosnippet']
let g:deoplete#sources#go#sort_class = ['func', 'type', 'var', 'const']
let g:deoplete#sources#go#align_class = 1

" set sources
let g:deoplete#sources = {}
let g:deoplete#sources.c = ['LanguageClient']
let g:deoplete#sources.cpp = ['LanguageClient']
let g:deoplete#sources.rust = ['LanguageClient']
let g:deoplete#sources.vim = ['vim']

" deoplete-racer config
let g:deoplete#sources#rust#racer_binary=$HOME."/.cargo/bin/racer"
let g:deoplete#sources#rust#rust_source_path=$HOME.'/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/'
