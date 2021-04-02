call plug#begin('~/.vim/plugged')

" Fuzzy Finding
Plug 'junegunn/fzf', {'dir': '~/.fzf' , 'do': 'yes \| ./install'}
Plug 'junegunn/fzf.vim'

" Navigation
Plug 'airblade/vim-rooter'
Plug 'farmergreg/vim-lastplace'
Plug 'dhruvasagar/vim-zoom'
Plug 'christoomey/vim-tmux-navigator'
Plug 'wsdjeg/vim-fetch'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" Editing
Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'fidian/hexmode'
Plug 'jiangmiao/auto-pairs'
Plug 'johngrib/vim-f-hangul'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vimwiki/vimwiki'
Plug 'will133/vim-dirdiff'
Plug 'terryma/vim-multiple-cursors'
Plug 'honza/vim-snippets'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mattn/emmet-vim'

" Information
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'mhinz/vim-startify'

" Command
Plug 'tpope/vim-eunuch'

" Linting
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() }}
Plug 'prettier/vim-prettier'

" Autocomplete
Plug 'Shougo/context_filetype.vim'
Plug 'SirVer/ultisnips'

" Language Specific Supports
Plug 'fatih/vim-go', { 'for': ['go'], 'do': ':GoInstallBinaries' }
Plug 'evanleck/vim-svelte'
Plug 'dag/vim-fish'
Plug 'cespare/vim-toml'
Plug 'hail2u/vim-css3-syntax'
Plug 'mogelbrod/vim-jsonpath'
Plug 'lmeijvogel/vim-yaml-helper'

call plug#end()
