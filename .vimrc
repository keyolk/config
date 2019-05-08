" colorscheme related
highlight normal      ctermbg=none
highlight statement   ctermbg=none
highlight title       ctermbg=none
highlight todo        ctermbg=none
highlight underlined  ctermbg=none
highlight errormsg    ctermbg=none
highlight linenr      ctermbg=none
highlight visual      cterm=reverse ctermbg=none
set bg=dark

" misc
set smartcase
set mouse=a
set signcolumn=yes
set encoding=utf-8
set noswapfile
set updatetime=750
set autochdir

" window related
set winheight=30
set splitbelow

" indentation related
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" show asicc code of current cursor
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P

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

nnoremap <C-s> :w!<CR>

" window contror
nnoremap <A-h> 5<C-w><
nnoremap <A-j> 5<C-w>-
nnoremap <A-k> 5<C-w>+
nnoremap <A-l> 5<C-w>>

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

nnoremap <C-q> :close<CR>
noremap <C-A-q> :q!<CR>
nnoremap <C-r> <C-w>r

" buffer control
nnoremap <S-h> :bprev<CR>
nnoremap <S-l> :bnext<CR>
noremap <S-q> :bp <BAR> bd #<CR>

" tab control
nnoremap <C-A-h> :bprev<CR>
nnoremap <C-A-l> :bnext<CR>

" netrw related
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 10
let g:NetrwIsOpen=0
autocmd FileType netrw setl bufhidden=delete

function! ToggleExplorer()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

noremap <leader>.e :call ToggleExplorer()<CR>

" clipboard related
set clipboard+=unnamedplus

noremap <leader>.p :call PasteToggle()<CR>
function! PasteToggle()
    if(&paste == 1)
        set nopaste
    else
        set paste
    endif
endfunction

" line number related
set number
set relativenumber

nnoremap <leader>.n :call NumberToggle()<CR>
function! NumberToggle()
    if(&nu == 1)
        set nu!
        set rnu!
    else
        set rnu
        set nu
    endif
endfunction

" list related
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set nolist
set eol

nnoremap <leader>.l :call ListToggle()<CR>
function! ListToggle()
    if(&list == 1)
        set nolist
    else
        set list
    endif
endfunction
