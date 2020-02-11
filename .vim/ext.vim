"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
nmap ;f :Files<CR>
nmap ;f; :Files<CR>
nmap ;fh :History<CR>
nmap ;fg :GFiles<CR>
nmap ;ft :Filetypes<CR>

nmap ;l :Lines<CR>
nmap ;l; :Lines<CR>
nmap ;lb :BLines<CR>
nmap ;lr :Rg 

nmap ;c :Commits<CR>
nmap ;c; :Commits<CR>
nmap ;cb :BCommits<CR>

nmap ;b :Buffers<CR>
nmap ;b; :Buffers<CR>

nmap ;w :Windows<CR>
nmap ;w; :Windows<CR>

nmap ;t :Tags<CR>
nmap ;t; :Tags<CR>
nmap ;tb :BTags<CR>

nmap ;? :Helptags<CR>
nmap ;! :Commands<CR>
nmap ;mp :Maps<CR>
nmap ;mk :Marks<CR>

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
  \ '--preview "file {1} | grep ELF || coderay {} 2> /dev/null | head -'.&lines.'"'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-gitgutter
map <leader>.g :GitGutterToggle<CR>
map <leader>gn :GitGutterNextHunk<CR>
map <leader>gp :GitGutterPrevHunk<CR>
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
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

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
" float-preview
function! DisableExtras()
  call nvim_win_set_option(g:float_preview#win, 'number', v:false)
  call nvim_win_set_option(g:float_preview#win, 'relativenumber', v:false)
  call nvim_win_set_option(g:float_preview#win, 'cursorline', v:false)
endfunction

autocmd User FloatPreviewWinOpen call DisableExtras()

let g:float_preview#docked = 1

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
