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

"    \ 'javascript': ['javascript-typescript-stdio'],
"    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
