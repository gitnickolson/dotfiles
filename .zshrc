export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""

# Load Oh my Zsh plugins
plugins=(
  git
  docker
  docker-compose
  vscode
  fzf
)

# Load general Zsh plugins
source $ZSH/oh-my-zsh.sh
source ~/code/gitnickolson/catppuccinifier/plugin.zsh

# Aliases
alias gpfwl="git push --force-with-lease"
alias ff="fastfetch"

alias ber='bundle exec rake'
alias dbsetup='ENV=db bundle exec rake db:create db:migrate'
alias dbreset='ENV=db bundle exec rake db:drop db:create db:migrate'

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

fastfetch

# pnpm
export PNPM_HOME="/home/nickolson/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
