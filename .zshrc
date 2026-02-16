export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""

plugins=(
  git
  docker
  docker-compose
  vscode
  fzf
)

source $ZSH/oh-my-zsh.sh

# Dumpfile name to prevent multiple dumpfiles being create
ZSH_COMPDUMP="$HOME/.zcompdump"

# Alias
alias gpfwl="git push --force-with-lease"
alias ff="fastfetch"

# Path additions
export PATH="$HOME/.atuin/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Tool initializers
if command -v fzf >/dev/null 2>&1; then
    source <(fzf --zsh)
fi

if command -v atuin >/dev/null 3>&1; then
    eval "$(atuin init zsh)"
fi

eval "$(starship init zsh)"
eval "$(mise activate zsh)"
