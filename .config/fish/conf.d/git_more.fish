function fcoc -d "Fuzzy-find and checkout a commit"
  git log --pretty=oneline --abbrev-commit --reverse | fzf --tac --preview "git show {1}" +s -e | awk '{print $1;}' | xargs git checkout
end
