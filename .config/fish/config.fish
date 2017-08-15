## dotfile managemnt
set fish_user_paths $fish_user_paths $HOME/.config/bin
set -x CONFIG_REPO .config.repo
alias config='/usr/bin/git --git-dir=$HOME/$CONFIG_REPO/ --work-tree=$HOME'

## fish configuration
set fish_greeting ""
fish_vi_key_bindings

## aliases
alias vi=vi
alias vim=nvim
alias grep='grep --color=always'
alias less='less -R'

## common environment
set -x FISH /usr/bin/fish
set -x CLANG_HOME /usr/lib/clang/4.0.1
set -x CLANG_LIB /usr/lib/libclang.so
set -x CLANG_INCLUDE $CLANG_HOME/include 
set -x GOPATH $HOME/workspace/gopath

## PATH
set -x PATH $GOPATH/bin (gem environment gempath | cut -d: -f1)/bin $PATH
