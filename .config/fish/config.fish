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
alias ssh='/usr/bin/ssh -F ~/.ssh/config'
alias cilookup='/usr/local/sbin/cilookup'
alias tmux-window="tmux list-window | fzf -0 -1 | awk '{print $2}' | xargs tmux select-window -t"

## common environment
set -x EDITOR /usr/bin/nvim
set -x BROWSER /user/bin/chromium
set -x FISH /usr/bin/fish
set -x CLANG_HOME /usr/lib/clang/5.0.1
set -x CLANG_LIB /usr/lib/libclang.so
set -x CLANG_INCLUDE $CLANG_HOME/include 
set -x GOPATH $HOME/workspace/gopath

## PATH
set -x PATH $HOME/.local/bin $GOPATH/bin (gem environment gempath | cut -d: -f1)/bin $PATH

# locale
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
