"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gutentags
let g:gutentags_modules = ['ctags', 'gtags_cscope']
"let g:gutentags_project_root = ['.root']
let g:gutentags_project_root = ['Cargo.toml']
let g:gutentags_cache_dir = '~/.cache/gutentags'
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_plus_switch = 1
"call add(g:gutentags_project_info, {'type': 'rust', 'file': 'Cargo.toml'})

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
      \ 'rust': ['rls'],
      \}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_echo_msg_format = '[%linter%]% code%: %s'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_open_list = 'on_save'
let g:ale_c_parse_makefile = 1
let g:ale_completion_delay = 500
let g:ale_list_window_size = 10
let g:ale_list_vertical = 0
let g:ale_list_window_size = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 1

let g:ale_rust_rls_toolchain = 'stable'
autocmd QuitPre * if empty(&bt) | lclose | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc.nvim
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
inoremap <silent><expr> <c-space> coc#refresh()
nmap <leader>rn <Plug>(coc-rename)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? coc#rpc#request('doKeymap', ['snippets-expand-jump','']) :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

function! s:check_back_space() abort
    let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rust.vim
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
let g:rustfmt_autosave = 1
let g:rust_conceal = 1 
let g:rust_conceal_mod_path = 1 

let g:rust_use_custom_ctags_defs = 1
if !exists('g:tagbar_type_rust')
   let g:tagbar_type_rust = {
       \ 'ctagstype' : 'rust',
       \ 'kinds' : [ 
         \'M:macro,Macro Definition',
         \'P:method,A method',
         \'c:implementation,implementation',
         \'e:enumerator,An enum variant',
         \'f:function,Function',
         \'g:enum,Enum',
         \'i:interface,trait interface',
         \'m:field,A struct field',
         \'n:module,module',
         \'s:struct,structural type',
         \'t:typedef,Type Alias',
         \'v:variable,Global variable',
       \ ]
   \ }
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-go
let g:go_fmt_command = 'goimports'
let g:go_def_mode = 'gopls'
let g:go_auto_type_info = 1
