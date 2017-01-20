export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# --Helpers
alias cl='clear'
alias cls='clear'
alias ls='clear && ls -F'
alias lsd='clear && ls -l | grep "^d"' # List only directories
alias ll='clear && ls -l -F'
alias la='clear && ls -F -la'
alias cd..="cd .."
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias reload='source ~/.bash_profile'

#Web
alias httpy='python -m http.server $1'
