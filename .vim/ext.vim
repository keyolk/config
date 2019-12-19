"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
nmap <leader>ff :Files<CR>
nmap <leader>fg :GFiles<CR>
nmap <leader>fr :Rg 
nmap <leader>fht :History<CR>

nmap <leader>fb :Buffers<CR>
nmap <leader>fw :Windows<CR>
nmap <leader>ft :Tags<CR>
nmap <leader>fts :Filetypes<CR>
nmap <leader>fl :Lines<CR>
nmap <leader>fhp :Helptags<CR>
nmap <leader>fmp :Maps<CR>
nmap <leader>fmk :Marks<CR>
nmap <leader>fs :Colors<CR>

nmap <leader>fcm :Commands<CR>
nmap <leader>fct :Commits<CR>

nmap <leader>fbt :BTags<CR>
nmap <leader>fbl :BLines<CR>
nmap <leader>fbct :BCommits<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'down': '~30%' }

let g:fzf_colors = { 
  \ 'fg':    ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_history_dir = '~/.local/share/fzf-history'

let g:fzf_files_options =
  \ '--preview "file {} | grep ELF || bat {} 2> /dev/null | head -'.&lines.'"'

let g:fzf_history_options =
  \ '--preview "file {} | grep ELF || bat {} 2> /dev/null | head -'.&lines.'"'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-gitgutter
map <leader>.g :GitGutterToggle<CR>
let g:gitgutter_diff_base = 'HEAD'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-fugitive
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gd :Gdiff

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" gv
nnoremap <leader>gv :GV<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" easy align
xnoremap ga <Plug>(EasyAlign)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-surround
map <leader>si ysiw
map <leader>sc cs
map <leader>sd ds
vmap S S

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indentLine
nnoremap <leader>.i :IndentLinesToggle<CR>
let g:indentLine_enabled = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdcommenter 
nnoremap <leader>.c :call NERDComment(0, "toggle")<CR>
vnoremap <leader>.c :call NERDComment(0, "toggle")<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
nnoremap <leader>.t :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" hexmode
nnoremap <leader>.h :Hexmode<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-zoom
nnoremap <leader>.z :call zoom#toggle()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline
let g:airline_theme='luna'
let g:airline_powerline_fonts                             = 0
let g:airline#extensions#tabline#enabled                  = 1
let g:airline#extensions#tabline#show_buffers             = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs  = 0
let g:airline#extensions#ale#enabled  = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimwiki
"
let g:vimwiki_list = [{'path': '~/wiki/', 
\   'syntax': 'markdown', 
\   'ext': '.md'}]
