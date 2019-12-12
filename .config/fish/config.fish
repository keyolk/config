## dotfile managemnt
set fish_user_paths $fish_user_paths $HOME/.config/bin
set -x CONFIG_REPO .config.repo
alias config='git --git-dir=$HOME/$CONFIG_REPO/ --work-tree=$HOME'
config config status.showUntrackedFiles no

set fish_user_paths $fish_user_paths $HOME/.secret/bin
set -x SECRET_REPO .secret.repo
alias secret='git --git-dir=$HOME/$SECRET_REPO/ --work-tree=$HOME'
secret config status.showUntrackedFiles no

## fish configuration
set fish_greeting ""
fish_vi_key_bindings

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

# locale
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

local

for file in (ls $HOME/.local/profile/*.fish)
  source $file
end

alias vimconfig='vim ~/.vimrc ~/.vim/*.vim'
alias fishconfig='vim ~/.config/fish/config.fish'
alias tmuxconfig='vim ~/.tmux.conf'
