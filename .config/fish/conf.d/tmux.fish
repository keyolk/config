function fs -d "Switch tmux session"
  tmux list-sessions -F "#{session_name}" | fzf | xargs tmux switch-client -t
end
