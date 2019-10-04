call plug#begin('~/.vim/plugged')

" Fuzzy Finding
Plug 'junegunn/fzf', {'dir': '~/.fzf'}
Plug 'junegunn/fzf.vim'

" Navigation
Plug 'majutsushi/tagbar'
Plug 'farmergreg/vim-lastplace'
Plug 'dhruvasagar/vim-zoom'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-vinegar'
Plug 'melonmanchan/vim-tmux-resizer'
Plug 'christoomey/vim-tmux-navigator'

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
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'will133/vim-dirdiff'
Plug 'terryma/vim-multiple-cursors'

" Information
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Command
Plug 'tpope/vim-eunuch'

" Linting
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() }} " Coc intellisense engine
Plug 'tpope/vim-eunuch'

" Tagging
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

" Autocomplete
Plug 'Shougo/context_filetype.vim'

" Language Specific Supports
Plug 'fatih/vim-go', { 'for': ['go'] }
Plug 'jodosha/vim-godebug', { 'for': ['go'] }
Plug 'rust-lang/rust.vim', { 'for': ['rust'] }
Plug 'racer-rust/vim-racer', { 'for': ['rust'] }

call plug#end()
