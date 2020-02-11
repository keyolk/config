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
set signcolumn=auto
set encoding=utf-8
set noswapfile
set updatetime=750
set autochdir
set shortmess+=c
set cmdheight=2
set mmp=5000
set hidden

set exrc
set secure

" preview related
set previewheight=10

" window related
set winheight=30
set splitbelow
set splitright

set hlsearch
set incsearch
set cpoptions+=x

set noshowmode
set noshowcmd

set noerrorbells
set visualbell
set t_vb=

" indentation related
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" show asicc code of current cursor
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
set laststatus=2

" clipboard related
set clipboard+=unnamedplus

" line number related
set number
set relativenumber

" set leader
let mapleader=","

" reload rc
nnoremap <leader>r :source $MYVIMRC<CR>

" file control
nnoremap <Leader>d :call DeleteFileAndCloseBuffer()<CR>
fun! DeleteFileAndCloseBuffer()
  let choice = confirm("Delete file and close buffer?", "&Do it!\n&Nonono", 1)
  if choice == 1 | call delete(expand('%:p')) | q! | endif
endfun

nnoremap <C-s> :w!<CR>

" window contror
nnoremap <A-S-h> 5<C-w><
nnoremap <A-S-j> 5<C-w>-
nnoremap <A-S-k> 5<C-w>+
nnoremap <A-S-l> 5<C-w>>

nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

nnoremap <C-q> :close<CR>
noremap <C-A-q> :q!<CR>

" buffer control
nnoremap <S-h> :bprev<CR>
nnoremap <S-l> :bnext<CR>
noremap <S-q> :bp <BAR> bd #<CR>

" tab control
nnoremap <C-A-h> :bprev<CR>
nnoremap <C-A-l> :bnext<CR>

" netrw related
let g:netrw_banner = 0
"let g:netrw_liststyle = 3
"let g:netrw_winsize = 10
let g:NetrwIsOpen=0
autocmd FileType netrw setl bufhidden=delete

noremap <leader>.e :call ToggleExplorer()<CR>
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

noremap <leader>.p :call PasteToggle()<CR>
function! PasteToggle()
    if(&paste == 1)
        set nopaste
    else
        set paste
    endif
endfunction

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

" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
      let t:zoomed = 0
      tabclose
    else
      tabedit %
      let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <leader>.z :ZoomToggle<CR>

" completion
set completeopt=menu,menuone,preview,noselect,noinsert

" splits
set splitbelow!
nnoremap <leader>/s :split<CR>
nnoremap <leader>/v :vsplit<CR>

" mark
"nnoremap <C-k> mxO<esc>`x
"nnoremap <C-j> mxo<esc>`x
"
augroup QFClose
  autocmd!
  autocmd WinEnter * if winnr('$') == 1 && &buftype == "quickfix"|q|endif
augroup END

augroup EditVim
  autocmd!
  autocmd BufWritePost .vimrc source $MYVIMRC
  autocmd FileType vim setlocal foldmethod=marker
augroup END

source $HOME/.vim/plug.vim
source $HOME/.vim/ext.vim
source $HOME/.vim/lang.vim

augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END

nnoremap <leader>.c :call VCenterCursorToggle()<CR>
if !exists('*VCenterCursor')
  augroup VCenterCursor
  au!
  au OptionSet *,*.*
    \ if and( expand("<amatch>")=='scrolloff' ,
    \         exists('#VCenterCursor#WinEnter,WinNew,VimResized') )|
    \   au! VCenterCursor WinEnter,WinNew,VimResized|
    \ endif
  augroup END
  function VCenterCursorToggle()
    if !exists('#VCenterCursor#WinEnter,WinNew,VimResized')
      let s:default_scrolloff=&scrolloff
      let &scrolloff=winheight(win_getid())/2
      au VCenterCursor WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/2
    else
      au! VCenterCursor WinEnter,WinNew,VimResized
      let &scrolloff=s:default_scrolloff
    endif
  endfunction
endif
call VCenterCursorToggle()
