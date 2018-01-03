function fs -d "Switch tmux session"
  tmux list-sessions -F "#{session_name}" | fzf | xargs tmux switch-client -t
end

function fc -d "Create new session"
  tmux new-session -d -s $argv
end

function fd -d "Delete tmux session"
  tmux list-sessions -F "#{session_name}" | fzf | xargs tmux kill-session -t
end
