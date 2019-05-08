call plug#begin('~/.vim/plugged')

" Fuzzy Finding
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'

" Navigation
Plug 'christoomey/vim-tmux-navigator'
Plug 'majutsushi/tagbar'
Plug 'farmergreg/vim-lastplace'
Plug 'dhruvasagar/vim-zoom'

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

" Tagging
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'

" Autocomplete
Plug 'Shougo/context_filetype.vim'
"Plug 'ervandew/supertab'
"Plug 'Shougo/neoinclude.vim'


" Snippets
"Plug 'honza/vim-snippets'
"Plug 'Shougo/neosnippet'
"Plug 'Shougo/neosnippet-snippets'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" Highlight
"Plug 'arakashic/chromatica.nvim'

" Language Specific Supports
Plug 'fatih/vim-go', { 'for': ['go'] }
Plug 'jodosha/vim-godebug', { 'for': ['go'] }
"Plug 'beanworks/vim-phpfmt', { 'for': ['php'] }
"Plug 'z0mbix/vim-shfmt', { 'for': ['sh', 'bash', 'fish']}
"Plug 'dag/vim-fish', { 'for': ['fish'] }
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-clang', { 'for': ['c', 'cpp', 'go'] }
"Plug 'zchee/deoplete-zsh', { 'for': ['zsh'] }
"Plug 'ponko2/deoplete-fish', { 'for': ['fish'] }
"Plug 'zchee/deoplete-jedi', { 'for': ['python'] }
"Plug 'zchee/deoplete-go', { 'do': 'make', 'for': ['go'] }
"Plug 'padawan-php/deoplete-padawan', { 'do': 'composer install' }
"Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': ['javascript', 'javascript.jsx'] }
"Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'wokalski/autocomplete-flow', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'posva/vim-vue', { 'for': ['vue'] }

call plug#end()
