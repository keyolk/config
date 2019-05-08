set runtimepath^=~/.config/nvim
source ~/.config/nvim/plug.vim
source ~/.config/nvim/lang.vim
source ~/.config/nvim/default.vim
source ~/.config/nvim/ext.vim
try
  source ~/.config/nvim/custom.vim
catch
endtry
