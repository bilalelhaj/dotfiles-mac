CURRENT_DIR=${${(%):-%x}:A:h}

# Imports
source $CURRENT_DIR/pomodoro.zsh
source $CURRENT_DIR/aliases.zsh
source <(fzf --zsh)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Exports
export PATH=/opt/homebrew/bin:$PATH
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

# Command History
HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000
setopt inc_append_history

