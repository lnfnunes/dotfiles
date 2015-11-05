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
alias reload='source ~/.bashrc'

#Git
alias gst='git status'
alias ga='git add $1'
alias gra='git remote add $1'
alias gb='git branch $1'
alias gcm='git commit $1'
alias gdf='git diff $1'
alias gco='git checkout $1'
alias gm='git checkout master $1'
alias gp='git push $1'

#Web
alias http='python -m http.server $1'

#Editor
alias less='less -r $1'
