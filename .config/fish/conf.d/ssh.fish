function fssh -d "Fuzzy-find ssh host and ssh into it"
  rg '^Host' ~/.ssh/config | cut -d ' ' -f 2 | fzf | xargs ssh
end
