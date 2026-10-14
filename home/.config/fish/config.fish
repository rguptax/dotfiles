~/.local/bin/mise activate fish | source

if test -d /opt/homebrew/bin
    fish_add_path /opt/homebrew/bin
end

if status is-interactive
   zoxide init fish | source
   starship init fish | source
   mcfly init fish | source
end
