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
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> U :call <SID>show_documentation()<CR>
nmap <localleader>rn <Plug>(coc-rename)
vmap <localleader>f  <Plug>(coc-format-selected)
nnoremap <silent> <localleader>d  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <localleader>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <localleader>c  :<C-u>CocList commands<cr>
nnoremap <silent> <localleader>o  :<C-u>CocList outline<cr>
nnoremap <silent> <localleader>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <localleader>n  :<C-u>CocNext<CR>
nnoremap <silent> <localleader>p  :<C-u>CocPrev<CR>
nnoremap <silent> <localleader>r  :<C-u>CocListResume<CR>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
let g:coc_disable_startup_warning = 1

set updatetime=300
set signcolumn=yes

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ulti-snips
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
" let g:UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'
let g:UltiSnipsExpandTrigger = '<c-u>'
let g:UltiSnipsJumpForwardTrigger = '<c-j>'
let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
let g:UltiSnipsListSnippets = '<m-u>'
let g:UltiSnipsRemoveSelectModeMappings = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-go
let g:go_fmt_command = 'goimports'
let g:go_def_mode = 'gopls'
let g:go_def_mapping_enabled = 0
let g:go_auto_type_info = 0
let g:go_gocode_propose_source = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rust.vim
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

autocmd FileType fish call s:fish_settings()
function! s:fish_settings()
  compiler fish
  setlocal textwidth=79
  setlocal foldmethod=expr
  setlocal nofoldenable
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-yaml-helper
let g:vim_yaml_helper#auto_display_path = 1

autocmd FileType yaml call YAML_SETTING()
function! YAML_SETTING()
  setlocal foldmethod=indent
  setlocal foldlevel=1
  setlocal foldclose=all
  setlocal nofoldenable
endfunction
