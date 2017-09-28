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

nnoremap <A-h> <C-w><
nnoremap <A-j> <C-w>-
nnoremap <A-k> <C-w>+
nnoremap <A-l> <C-w>>

" reload rc
nmap <leader>r :source $MYVIMRC<CR>

" window control
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

" fast save
nnoremap <S-s> :w!<CR>

" paste toggle
set pastetoggle=<F2>

" set leader
let mapleader=","

" clipboard
set clipboard+=unnamedplus

set splitbelow

set mouse=a

" clipboard
"set clipboard+=unnamedplus

set splitbelow

set mouse=a

" Relative or absolute number lines
function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu!
    else
        set rnu
        set nu
    endif
endfunction

nnoremap <F3> :call NumberToggle()<CR>
