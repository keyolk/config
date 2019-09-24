## dotfile managemnt
set fish_user_paths $fish_user_paths $HOME/.config/bin
set -x CONFIG_REPO .config.repo
alias config='git --git-dir=$HOME/$CONFIG_REPO/ --work-tree=$HOME'

set fish_user_paths $fish_user_paths $HOME/.secret/bin
set -x SECRET_REPO .secret.repo
alias secret='git --git-dir=$HOME/$SECRET_REPO/ --work-tree=$HOME'

## fish configuration
set fish_greeting ""
fish_vi_key_bindings

## aliases
alias vi=vi
alias vim=$HOME/prefix/usr/bin/vim
alias grep='grep --color=always'
alias less='less -R'
alias watch='watch --color'
alias ssh='ssh -F $HOME/.ssh/config'
#alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias help='tldr'
alias preview="fzf --preview 'bat --color \"always\" {}'"
#alias cat='bat'
alias fzf='fzf --ansi'
alias jq='$HOME/prefix/usr/bin/jq'
alias gpg='$HOME/prefix/usr/bin/gpg'
alias gpg2='$HOME/prefix/usr/bin/gpg'
alias git='$HOME/prefix/usr/bin/git'
alias makeinfo='$HOME/prefix/usr/bin/makeinfo'

## common environment
set -x SHELL fish
set -x EDITOR nvim
set -x BROWSER chromium
set -x FISH (which fish)
set -x GOPATH $HOME/go
set -x GIT_TERMINAL_PROMPT 1
set -x GO111MODULE on

set -x FZF_DEFAULT_OPTS "--bind='ctrl-o:execute(code {})+abort'"
set -x FZF_DEFAULT_COMMAND  'rg --files --no-ignore-vcs --hidden'

## PATH
set -U fish_user_paths /bin /usr/bin /sbin /usr/sbin /usr/local/bin /usr/local/sbin $fish_user_paths $HOME/.local/bin $GOPATH/bin

# locale
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

for file in (ls $HOME/.local/profile/*.fish)
  source $file
end

set -x REMOTE_USER keyolk
