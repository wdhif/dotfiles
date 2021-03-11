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
  PATH=~/.homebrew/bin:$PATH # Homebrew binaries before default macOS binaries
  PATH=~/.homebrew/sbin:$PATH # Homebrew superuser binaries before default macOS binaries
  PATH=~/.homebrew/opt/ruby/bin:$PATH # Use Homebrew Ruby binaries
  PATH=$PATH:/usr/local/bin # local binaries
  PATH=$PATH:${HOME}/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin
  # Go path
  export GOROOT=${HOME}/.homebrew/Cellar/go/1.16/libexec
  export GOPATH=${HOME}/Projets/go/
  PATH=$PATH:$GOPATH/bin
  PATH=$PATH:$GOROOT/bin
fi
