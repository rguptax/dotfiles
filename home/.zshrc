eval "$(~/.local/bin/mise activate zsh)" 

if [ -d "/opt/homebrew/bin" ]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi

eval "$(starship init zsh)"
eval "$(mcfly init zsh)"
eval "$(zoxide init zsh)"

