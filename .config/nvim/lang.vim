
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gutentags
let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_project_root = ['.root']
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_plus_switch = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" deoplete
"set completeopt=longest,menuone,preview
"
"let g:deoplete#enable_at_startup         = 1
"let g:deoplete#auto_complete_start_lengh = 1
"
"" deoplete-clang
"let g:deoplete#sources#clang#libclang_path = $CLANG_LIB
"let g:deoplete#sources#clang#clang_header  = $CLANG_INCLUDE
"
"" deoplete-go
"let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
"let g:deoplete#sources#go#use_cache  = 0
"
"" deopete-tern
"let g:deoplete#omni#functions = {}
"let g:deoplete#omni#functions.javascript = [
"  \ 'tern#Complete',
"  \ 'jspc#omni'
"  \]
"
"let g:deoplete#sources = {}
"let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
"let g:tern#command = ['tern']
"let g:tern#arguments = ['--persistent']
"
"autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
"let g:UltiSnipsExpandTrigger="<C-j>"
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neosnippet
"let g:neosnippet#enable_completed_snippet = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" chromatica
"let g:chromatica#libclang_path     = $CLANG_LIB
"let g:chromatica#enable_at_startup = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ale
let g:ale_linters = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'c': ['gcc', 'clang'],
      \ 'cpp': ['g++', 'clang'],
      \ 'sh': ['shellcheck'],
      \ 'json': ['jsonlint'],
      \ 'css': ['csslint'],
      \ 'javascript': ['eslint'],
      \ 'go': ['gopls'],
      \}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0
let g:ale_completion_delay = 100
let g:ale_echo_msg_format = '[%linter%]% code%: %s'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_open_list = 'on_save'
let g:ale_c_parse_makefile = 1
imap <C-Space> <Plug>(ale_complete)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-go
let g:go_fmt_command = 'goimports'
let g:go_def_mode = 'gopls'
let g:go_auto_type_info = 1
