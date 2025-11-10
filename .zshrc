# path to oh my zsh
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="archcraft"
CASE_SENSITIVE="true"

zstyle ':omz:update' mode reminder

# ENABLE_CORRECTION="true"

HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git)

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
alias zshconfig="nvim ~/.zshrc"

# exports
export PATH=$PATH:/home/samudra/.spicetify
export DOTF=/home/samudra/github/dotfiles

# my sincere greetings to me
echo "Hello, this is ZSH. Welcome on the dark side of the moon."
