##### GIT related aliases #####

alias ga='git add'
alias gs='git status'
alias gco='git checkout'
alias gd='git diff'
alias gitclean='git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d'

##### NPM related aliases #####
alias npm-exec='PATH=$(npm bin):$PATH'