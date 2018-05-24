" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'cpp': ['cquery', '--log-file=/tmp/cq.log', '--init={"index": {"comments": 2}}'],
    \ 'c': ['cquery', '--log-file=/tmp/cq.log', '--init={"index": {"comments": 2}}'],
    \ }

let g:LanguageClient_autoStart = 1
let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = $HOME.'/.config/nvim/settings.json'
set completefunc=LanguageClient#complete
set formatexpr=LanguageClient_textDocument_rangeFormatting()

function! MyLanguageClient_statusLine(...) abort
    if exists('g:LanguageClient_serverStatus')
        let w:airline_section_b = join(split(g:LanguageClient_serverStatusMessage)[1:], ' ')
    endif
    return
endfunction
call airline#add_statusline_func('MyLanguageClient_statusLine')

"    \ 'javascript': ['javascript-typescript-stdio'],
"    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
