call plug#begin('~/.vim/plugged')

" Colorscheme
Plug 'tomasr/molokai'

" Navigation
Plug 'airblade/vim-rooter'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } 
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
Plug 'johngrib/vim-f-hangul'
Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }
Plug 'fidian/hexmode'

" Linting
Plug 'neomake/neomake'

" Goto
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

" Autocomplete
Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/context_filetype.vim'
Plug 'Shougo/neoinclude.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-zsh'
Plug 'ponko2/deoplete-fish'
Plug 'zchee/deoplete-jedi'
Plug 'sebastianmarkow/deoplete-rust'
Plug 'zchee/deoplete-go', { 'do': 'make', 'for': ['go'] }
Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': ['javascript', 'javascript.jsx'] }

Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'wokalski/autocomplete-flow', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'honza/vim-snippets'

" Highlight
Plug 'hashivim/vim-vagrant'
Plug 'dag/vim-fish'
Plug 'arakashic/chromatica.nvim'
Plug 'posva/vim-vue'

" Language Specific Supports
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'jodosha/vim-godebug'
Plug 'beanworks/vim-phpfmt', { 'for': ['php'] }

call plug#end()
