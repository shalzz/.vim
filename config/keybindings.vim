inoremap <silent><expr> <TAB>
                \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ deoplete#mappings#manual_complete()
                function! s:check_back_space() abort "{{{
                let col = col('.') - 1
                return !col || getline('.')[col - 1]  =~ '\s'
                endfunction"}}}

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

nnoremap <silent> <C-k> :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> gs :call LanguageClient#textDocument_documentSymbol()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

imap <C-n> <Plug>(neosnippet_expand_or_jump)
smap <C-n> <Plug>(neosnippet_expand_or_jump)
xmap <C-n> <Plug>(neosnippet_expand_target)

" Nerd Tree toggling
map <C-b> :NERDTreeToggle<CR>

" move between buffers
map J <Esc>:bprev<CR>
map K <Esc>:bnext<CR>
map X <Esc>:bdelete<CR>

" switch to left / right split (mostly for Nerd Tree)
map H <C-W>h
map L <C-W>l

" switch between tabs
map <C-h> <Esc>:tabprev<CR>
map <C-l> <Esc>:tabnext<CR>
