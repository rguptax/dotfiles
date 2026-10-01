~/.local/bin/mise activate fish | source

if status is-interactive
   zoxide init fish | source
   starship init fish | source
   mcfly init fish | source
end
