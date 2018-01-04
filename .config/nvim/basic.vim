" colorscheme
colorscheme molokai
highlight normal      ctermbg=none
highlight statement   ctermbg=none
highlight title       ctermbg=none
highlight todo        ctermbg=none
highlight underlined  ctermbg=none
highlight errormsg    ctermbg=none
highlight linenr      ctermbg=none
highlight visual      ctermbg=100

set mouse=a
set splitbelow

set signcolumn=yes
set encoding=utf-8
set noswapfile

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
nnoremap <A-h> <C-w><
nnoremap <A-j> <C-w>-
nnoremap <A-k> <C-w>+
nnoremap <A-l> <C-w>>

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-q> :q<CR>
nnoremap <C-r> <C-w>r

" buffer control
nnoremap <S-h> :bprev<CR>
nnoremap <S-l> :bnext<CR>
noremap <S-q> :bp <BAR> bd #<CR>

" tab control
nnoremap <C-A-h> :bprev<CR>
nnoremap <C-A-l> :bnext<CR>
noremap <C-A-q> :bp <BAR> bd #<CR>

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
