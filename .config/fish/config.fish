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
#alias ssh='/usr/bin/ssh -F ~/.ssh/config'
#alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias help='tldr'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias cat='bat'
alias fzf='fzf --ansi'
alias trans='trans :kor'

## common environment
set -x SHELL /data/data/com.termux/files/usr/bin/fish
set -x EDITOR nvim
set -x BROWSER chromium
set -x FISH fish
set -x CLANG_HOME /data/data/com.termux/files/usr/lib/clang/7.0.1
set -x CLANG_LIB /data/data/com.termux/files/usr/lib/libclang.so
set -x CLANG_INCLUDE $CLANG_HOME/include 
set -x GOPATH $HOME/go
set -x GIT_TERMINAL_PROMPT 1
set -x FZF_DEFAULT_OPTS "--bind='ctrl-o:execute(code {})+abort'"

## termux specific
set -x X_CFLAGS "-I/data/data/com.termux/files/usr/include -D_REENTRANT"
set -x X_LIBS "-Wl,-R/data/data/com.termux/files/usr/lib -lX11"
set -x DISPLAY localhost:0
set -x PULSE_SERVER localhost:4712

## PATH
set -U fish_user_paths $PATH $HOME/.local/bin $GOPATH/bin (gem environment gempath | cut -d: -f1)/bin /usr/share/bcc/tools

# locale
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
