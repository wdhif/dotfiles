####################
# General settings #
####################

# Add macOS style navigation
if [[ $OSTYPE == 'darwin'* ]]; then
  bindkey "[D" backward-word
  bindkey "[C" forward-word
fi

