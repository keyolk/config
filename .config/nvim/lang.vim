
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

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> U :call <SID>show_documentation()<CR>
nmap <leader>rn <Plug>(coc-rename)
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

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
let g:go_def_mapping_enabled = 0
let g:go_auto_type_info = 1
