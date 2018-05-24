inoremap <silent><expr> <TAB>
                \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ deoplete#mappings#manual_complete()
                function! s:check_back_space() abort "{{{
                let col = col('.') - 1
                return !col || getline('.')[col - 1]  =~ '\s'
                endfunction"}}}

nnoremap <silent> K :call LanguageClient#textDocument_hover({'gotoCmd': 'split'})<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition({'gotoCmd': 'tabedit'})<CR>
nnoremap <silent> gr :call LanguageClient#textDocument_references({'gotoCmd': 'split'})<CR>
nnoremap <silent> gs :call LanguageClient#textDocument_documentSymbol({'gotoCmd': 'split'})<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename({'gotoCmd': 'split'})<CR>

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
