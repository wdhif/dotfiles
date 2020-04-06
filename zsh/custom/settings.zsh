####################
# General settings #
####################

# Detect which 'ls' flavor is in use
if [[ $OSTYPE == 'linux-gnu' ]]; then
  colorflag='--color'
elif [[ $OSTYPE == 'darwin'* ]]; then
  colorflag="-G"
fi
