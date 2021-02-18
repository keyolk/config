## dotfile managemnt
set fish_user_paths $fish_user_paths $HOME/.config/bin
set -x CONFIG_REPO .config.repo
alias config='git --git-dir=$HOME/$CONFIG_REPO/ --work-tree=$HOME'
#config config status.showUntrackedFiles no

set fish_user_paths $fish_user_paths $HOME/.secret/bin
set -x SECRET_REPO .secret.repo
alias secret='git --git-dir=$HOME/$SECRET_REPO/ --work-tree=$HOME'
#secret config status.showUntrackedFiles no

## fish configuration
set fish_greeting ""
fish_vi_key_bindings

## common environment
set -x SHELL (which fish)
set -x EDITOR (which nvim)
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

# load local functions in $HOME/.config/fish/functions/local.fish
local

# load private profile in local
for file in (ls $HOME/.local/profile/*.fish)
  source $file
end

# pathes
set fish_user_paths $fish_user_paths $HOME/.local/bin
set fish_user_paths $fish_user_paths $GOPATH/bin 
set fish_user_paths $fish_user_paths (ruby -r rubygems -e 'puts Gem.user_dir')/bin 
set fish_user_paths $HOME/prefix/usr/bin $fish_user_paths

# some aliases
alias fzf='fzf --ansi'
alias less='less -R'
alias clrout='sed \'s,\x1b\\[[0-9;]*[a-zA-Z],,g\''

# for easy configuration
alias vimconfig='$EDITOR ~/.vimrc ~/.vim/*.vim ~/.vim/*.json'
alias fishconfig='$EDITOR ~/.config/fish/config.fish ~/.local/profile/*'
alias tmuxconfig='$EDITOR ~/.tmux.conf'
alias gitconfig='$EDITOR ~/.gitconfig'
alias sshconfig='$EDITOR ~/.ssh/config'

# tmux handling
if test -n "$TMUX"
  exit 0
end

#if ! tty
#echo tty
#  exit 0
#end

if test -n "$TMUX_SOCK"
  alias tmux='tmux -S $TMUX_SOCK'
end

# remove right prompt
function fish_right_prompt
 #intentionally left blank
end

set -u PREFIX
set -x CCF_USE_FZF

tmux attach
