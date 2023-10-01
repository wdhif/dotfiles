####################
# General settings #
####################

# Export GPG_TTY environment variable
export GPG_TTY=$(tty)

# Add macOS style navigation
if [[ $OSTYPE == 'darwin'* ]]; then
  bindkey "[D" backward-word
  bindkey "[C" forward-word
fi

# Autocompletions
autoload -Uz compinit
compinit

source <(kubectl completion zsh)
source <(minikube completion zsh)
source <(helm completion zsh)
