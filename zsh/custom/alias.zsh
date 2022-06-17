###########
# Aliases #
###########

# cd aliases
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Detect which 'ls' flavor is in use
if [[ $OSTYPE == 'linux-gnu'* ]]; then
  colorflag='--color'
elif [[ $OSTYPE == 'darwin'* ]]; then
  colorflag="-G"
fi

# ls aliases
alias ls="ls ${colorflag}"
alias ll="ls -alF"
alias la="ls -lha"
alias l="ls -CF"

# System aliases
alias df="df -Tha --total"
alias free="free -mth"

# Utility aliases
alias fhere="find . -name"
alias mkdir="mkdir -pv"
alias wget="wget -c"
alias more="less"
alias jsonbeautify="python -m json.tool"
alias sshb0t="docker run -d --restart always --name sshb0t -v ${HOME}/.ssh/authorized_keys:/root/.ssh/authorized_keys r.j3ss.co/sshb0t --user wdhif"
alias ctop="docker run --rm -it --name=ctop -v /var/run/docker.sock:/var/run/docker.sock quay.io/vektorlab/ctop:latest"
alias python2="\python"
alias pip2="\pip"
alias python="python3"
alias pip="pip3"
alias venv="source ~/Projets/venv/bin/activate"

# Darwin aliases
if [[ $OSTYPE == 'darwin'* ]]; then
  alias lock="pmset displaysleepnow"
fi

# Sanity aliases
alias sl="ls"
alias dokcer="docker"

# Private specific aliases
if [ -f ~/.bash_private ]; then
    . ~/.bash_private
fi

# Work specific aliases
if [ -f ~/.bash_work ]; then
    . ~/.bash_work
fi
