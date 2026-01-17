# path to oh my zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="archcraft"
CASE_SENSITIVE="true"

# zstyle ':omz:update' mode reminder

# ENABLE_CORRECTION="true"

HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# plugins
plugins=(
  git zsh-autosuggestions fast-syntax-highlighting zsh-history-substring-search
  sudo z themes dirhistory copypath golang zsh-interactive-cd
)

# run oh my zsh on startup
source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# On-demand rehash
zshcache_time="$(date +%s%N)"

autoload -Uz add-zsh-hook

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

add-zsh-hook -Uz precmd rehash_precmd

# aliases
alias reloadzsh="source ~/.zshrc"
alias configzsh="nvim ~/.zshrc"
alias fetch="fastfetch"
alias lgit="lazygit"
alias hist="history"
alias confignvim="cd ~/.config/nvim/lua && nvim"

# exports
export PATH="$PATH:$HOME/.spicetify" # spicetify
export PATH="$PATH:$HOME/go/bin" # go, GOOOO GLOBLE WOBLE
export PATH="$HOME/.local/bin:$PATH" # locally installed bins
export PATH="$PATH:$HOME/.turso" # turso cli

export EDITOR="nvim -u NONE"
export VISUAL="nvim -u NONE"
export DOTF="$HOME/github/dotfiles"
export NVIM="$HOME/github/dotfiles/.config/nvim"
export CODE="$HOME/coding"
export DUMP="$HOME/DUMPS"
export ENV="$HOME/.env"

# my sincere greetings to me
echo "We're in ZSH. Welcome to the dark side of the moon."

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm config (auto)
export PNPM_HOME="/home/samudra/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
