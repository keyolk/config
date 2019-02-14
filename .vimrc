" colorscheme

set smartcase
set mouse=a
set splitbelow

set signcolumn=yes
set encoding=utf-8
set noswapfile
set updatetime=750

" set line number
set relativenumber
set number

set hidden

" set window default size
set winheight=30

" set tab/space
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" show asicc code of current cursor
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P

" whitespace
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set nolist
set eol

" set leader
let mapleader=","

" reload rc
nnoremap <leader>r :source $MYVIMRC<CR>

" file control
nnoremap <Leader>d. :call DeleteFileAndCloseBuffer()<CR>
fun! DeleteFileAndCloseBuffer()
  let choice = confirm("Delete file and close buffer?", "&Do it!\n&Nonono", 1)
  if choice == 1 | call delete(expand('%:p')) | q! | endif
endfun

" window contror
nnoremap <A-h> 10<C-w><
nnoremap <A-j> 10<C-w>-
nnoremap <A-k> 10<C-w>+
nnoremap <A-l> 10<C-w>>

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

nnoremap <leader>q :q<CR>
nnoremap <leader>wr <C-w>r
nnoremap <leader>wh <C-w>H
nnoremap <leader>wv <C-w>J

nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>

" buffer control
nnoremap <S-h> :bprev<CR>
nnoremap <S-l> :bnext<CR>
noremap <S-q> :bp <BAR> bd #<CR>

" tab control
"nnoremap <C-A-h> :bprev<CR>
"nnoremap <C-A-l> :bnext<CR>
"noremap <C-A-q> :bp <BAR> bd #<CR>

" fast save
nnoremap <S-s> :w!<CR>

" paste toggle
set pastetoggle=<F2>

" clipboard
set clipboard+=unnamedplus

" Relative or absolute number lines
nnoremap <F3> :call NumberToggle()<CR>
function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu!
    else
        set rnu
        set nu
    endif
endfunction

" Set or Unset list
nnoremap <F6> :call ListToggle()<CR>
function! ListToggle()
    if(&list == 1)
        set nolist
    else
        set list
    endif
endfunction

" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <leader>z :ZoomToggle<CR>

" Wrap / No wrap toggle
function! AutoWrapToggle()
  if &formatoptions =~ 't'
    set fo-=t
  else
    set fo+=t
  endif
endfunction
nnoremap <leader>w :call AutoWrapToggle()<CR>
