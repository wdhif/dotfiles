set fish_greeting ""

for file in ~/.config/fish/conf.d/*.fish
  source
end

###########
# Aliases #
###########

# ls aliases
alias ls "ls --color=auto"
alias ll "ls -alF"
alias la "ls -lha"
alias l "ls -CF"

# System aliases
alias df "df -Tha --total"
alias free "free -mth"

# Other aliases
alias fhere "find . -name"
alias mkdir "mkdir -pv"
alias wget "wget -c"
alias more "less"

