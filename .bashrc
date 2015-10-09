# --Show-control-chars: help showing Korean or accented characters
alias ls='ls -F --color --show-control-chars'

# --Helpers
alias cls='clear'
alias ll='clear && ls -l'
alias ..='cd ..'
alias ...='cd ../../'
alias /='cd /'

#Git
alias gs='git status '
alias ga='git add $1'
alias gb='git branch $1'
alias gcm='git commit'
alias gd='git diff'
alias gco='git checkout '
alias master='git checkout master $1'
alias push='git push'

#Web
alias http='python -m http.server $1'

#Editor
alias less='less -r'
