let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1
" Disable the candidates in Comment/String syntaxes.
call deoplete#custom#source('_',
            \ 'disabled_syntaxes', ['Comment', 'String'])
