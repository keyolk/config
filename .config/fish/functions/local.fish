function local -d "Local functions"
end

# general
function fcd -d "Fuzzy change directory"
  if set -q argv[1]
    set searchdir $argv[1]
  else
    set searchdir $HOME
  end
 
  set -l tmpfile (mktemp)
  find $searchdir \( ! -regex '.*/\..*' \) ! -name __pycache__ -type d | fzf > $tmpfile
  set -l destdir (cat $tmpfile)
  rm -f $tmpfile
 
  if test -z "$destdir"
    return 1
  end
 
  cd $destdir
end

# ssh related
function ssh_get_hostname -d "get hostname from ssh host"
  ssh -G $argv | grep -E '^hostname' | awk '{print $2}' 
end

function ssh_get_host -d "find host from ssh config"
  cat ~/.ssh/config | grep -i 'Host ' | fzf --preview "ssh -G (echo {} | awk '{print \$2}') 2> /dev/null | grep -E '^hostname |^user |identity|^port' 2> /dev/null" | awk '{print $2}'
end

# git related
function fgc --description "Git browse commits"
    set -l log_line_to_hash "echo {} | grep -o '[a-f0-9]\{7\}' | head -1"
    set -l view_commit "$log_line_to_hash | xargs -I % sh -c 'git show --color=always % | diff-so-fancy | less -R'"
    set -l copy_commit_hash "$log_line_to_hash | xclip"
    set -l git_checkout "$log_line_to_hash | xargs -I % sh -c 'git checkout %'"
    set -l open_cmd "open"

    if test (uname) = Linux
        set open_cmd "xdg-open"
    end

    set github_open "$log_line_to_hash | xargs -I % sh -c '$open_cmd https://github.\$(git config remote.origin.url | cut -f2 -d. | tr \':\' /)/commit/%'"

    git log --color=always --format='%C(auto)%h%d %s %C(green)%C(bold)%cr% C(blue)%an' | \
        fzf --no-sort --reverse --tiebreak=index --no-multi --ansi \
            --preview="$view_commit" \
            --header="ENTER to view, CTRL-Y to copy hash, CTRL-O to open on GitHub, CTRL-X to checkout, CTRL-C to exit" \
            --bind "enter:execute:$view_commit" \
            --bind "ctrl-y:execute:$copy_commit_hash" \
            --bind "ctrl-x:execute:$git_checkout" \
            --bind "ctrl-o:execute:$github_open"
end

# tmux related
