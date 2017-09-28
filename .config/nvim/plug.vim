call plug#begin('~/.vim/plugged')

" Colorscheme
Plug 'tomasr/molokai'

" Navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'majutsushi/tagbar'
Plug 'farmergreg/vim-lastplace'

" Fuzzy Finding
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'

" Information
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'

" Editing
Plug 'junegunn/goyo.vim'
Plug 'roxma/vim-tmux-clipboard'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'easymotion/vim-easymotion'
Plug 'will133/vim-dirdiff'

" Linting
Plug 'neomake/neomake'

" Autocomplete
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-zsh'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go', { 'do': 'make' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Goto
Plug 'JCLiang/vim-cscope-utils'
Plug 'chazy/cscope_maps'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Language Specific Supports
Plug 'fatih/vim-go'
Plug 'jodosha/vim-godebug'

" Highlight
Plug 'hashivim/vim-vagrant'
Plug 'dag/vim-fish'

call plug#end()

