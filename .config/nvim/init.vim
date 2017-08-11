set runtimepath^=~/.config/nvim
source ~/.config/nvim/plug.vim
source ~/.config/nvim/basic.vim
source ~/.config/nvim/config.vim
try
  source ~/.config/nvim/custom.vim
catch
endtry
