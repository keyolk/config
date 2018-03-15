call plug#begin('~/.vim/plugged')

" Colorscheme
Plug 'tomasr/molokai'

" Navigation
Plug 'airblade/vim-rooter'
Plug 'scrooloose/nerdtree', {'on': ['NERDTreeFind', 'NERDTreeToggle']}
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
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'Yggdroot/indentLine'

" Editing
"Plug 'roxma/vim-tmux-clipboard' "too slow
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'easymotion/vim-easymotion'
Plug 'will133/vim-dirdiff'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }

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
Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Goto
Plug 'JCLiang/vim-cscope-utils' "too slow
"Plug 'chazy/cscope_maps' "too slow

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Language Specific Supports
Plug 'fatih/vim-go'
Plug 'jodosha/vim-godebug'

" Highlight
Plug 'hashivim/vim-vagrant'
Plug 'dag/vim-fish'
Plug 'arakashic/chromatica.nvim'
Plug 'posva/vim-vue'

call plug#end()

