## dotfile managemnt
set fish_user_paths $fish_user_paths $HOME/.config/bin
set -x CONFIG_REPO .config.repo
alias config='git --git-dir=$HOME/$CONFIG_REPO/ --work-tree=$HOME'

## fish configuration
set fish_greeting ""
fish_vi_key_bindings

## aliases
alias vi=vi
alias vim=nvim
alias grep='grep --color=always'
alias less='less -R'
alias watch='watch --color'
alias ssh='/usr/bin/ssh -F ~/.ssh/config'
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias help='tldr'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias cat='bat'
alias fzf='/usr/sbin/fzf --ansi'

## common environment
set -x EDITOR /usr/bin/nvim
set -x BROWSER /user/bin/chromium
set -x FISH /usr/bin/fish
set -x CLANG_HOME /usr/lib/clang/latest
set -x CLANG_LIB /usr/lib/libclang.so
set -x CLANG_INCLUDE $CLANG_HOME/include 
set -x GOPATH (readlink -f $HOME/work/gopath)
set -x GIT_TERMINAL_PROMPT 1
set -x FZF_DEFAULT_OPTS "--bind='ctrl-o:execute(code {})+abort'"

## PATH
set -U fish_user_paths $PATH $HOME/.local/bin $GOPATH/bin (gem environment gempath | cut -d: -f1)/bin

# locale
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
