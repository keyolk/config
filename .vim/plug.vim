call plug#begin('~/.vim/plugged')

" Fuzzy Finding
Plug 'junegunn/fzf', {'dir': '~/.fzf' , 'do': 'yes \| ./install'}
Plug 'junegunn/fzf.vim'

" Navigation
Plug 'majutsushi/tagbar'
Plug 'farmergreg/vim-lastplace'
Plug 'dhruvasagar/vim-zoom'
Plug 'airblade/vim-rooter'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'melonmanchan/vim-tmux-resizer'
Plug 'christoomey/vim-tmux-navigator'
Plug 'wsdjeg/vim-fetch'
Plug 'ruanyl/vim-gh-line'

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
Plug 'fcpg/vim-osc52'

" Information
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'mhinz/vim-startify'

" Command
Plug 'tpope/vim-eunuch'

" Linting
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() }}
Plug 'tpope/vim-eunuch'

" Tagging
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'skywind3000/gutentags_plus'

" Autocomplete
Plug 'Shougo/context_filetype.vim'

" Language Specific Supports
Plug 'fatih/vim-go', { 'for': ['go'], 'do': ':GoInstallBinaries' }
"Plug 'jodosha/vim-godebug', { 'for': ['go'] }
"Plug 'rust-lang/rust.vim', { 'for': ['rust'] }
"Plug 'racer-rust/vim-racer', { 'for': ['rust'] }
Plug 'evanleck/vim-svelte'

call plug#end()
