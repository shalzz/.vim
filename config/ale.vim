" Fixer
let g:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_fixers = {'jsx': ['prettier', 'eslint']}
let g:ale_fixers = {'rust': ['rustfmt']}

" Linter
let g:ale_sign_column_always = 1
" only lint on save
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_linters = {'c': ['cquery', 'clangtidy']}
let g:ale_linters = {'cpp': ['cquery']}
let g:ale_linter = {'rust': ['cargo']}

" Echo format
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Rust specific options
let g:ale_rust_cargo_use_check = 1
let g:ale_rust_cargo_check_all_targets = 1
let g:ale_rust_cargo_use_clippy = executable('cargo-clippy')
