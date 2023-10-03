########
# Path #
########

# Custom functions
PATH=$PATH:~/.bin

# Work functions
PATH=$PATH:~/.bin/work

# Go path
export GOPATH=$HOME/Projets/go

# macOS specific path
if [[ $OSTYPE == 'darwin'* ]]; then
  PATH=/opt/homebrew/bin:$PATH # Homebrew default location binaries before default macOS binaries
  PATH=/opt/homebrew/sbin:$PATH # Homebrew default location superuser binaries before default macOS binaries
  PATH=~/.homebrew/bin:$PATH # Homebrew binaries before default macOS binaries
  PATH=~/.homebrew/sbin:$PATH # Homebrew superuser binaries before default macOS binaries
  PATH=~/.local/bin:$PATH
  NVM_DIR="$HOME/.nvm"  # Add nvm directory
  [ -s "/Users/wdhif/.homebrew/opt/nvm/nvm.sh" ] && . "/Users/wdhif/.homebrew/opt/nvm/nvm.sh"  # Load nvm
  [ -s "/Users/wdhif/.homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/Users/wdhif/.homebrew/opt/nvm/etc/bash_completion.d/nvm"  # Load nvm completion
  PATH=~/Library/Python/3.7/bin:$PATH # Use Homebrew Python binaries
  PATH=~/.homebrew/opt/ruby/bin:$PATH # Use Homebrew Ruby binaries
  PATH=$PATH:/usr/local/bin # local binaries
  PATH=$PATH:${HOME}/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
  # Go path
  export GOROOT=$(brew --prefix go)/libexec
  export GOPATH=${HOME}/Projets/go/
  PATH=$PATH:$GOPATH/bin
  PATH=$PATH:$GOROOT/bin
fi
