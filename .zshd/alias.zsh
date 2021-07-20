#       _ _                     
#  __ _| (_) __ _ ___  ___  ___ 
# / _` | | |/ _` / __|/ _ \/ __|
#| (_| | | | (_| \__ \  __/\__ \
# \__,_|_|_|\__,_|___/\___||___/
#

# ls
alias ls='lsd'
alias la='lsd -a'
alias ll='lsd -l'
alias lt='lsd --tree'
alias lta='lsd -a --tree'

# cd
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ~='cd ~'
alias do='cd ~/Dev/dotfiles'
alias ds='cd ~/Desktop'
alias dw='cd ~/Downloads'

# safety measures
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# git commands
alias ga='git add'
alias gc='git commit -m'
alias gpr='git push -u origin master'
alias gpn='git push -u origin main'
alias gs='git status'
alias gl="git log"

# handmade commands
alias trans='translate.py'
alias term-youtube='python ~/Dev/term-youtube/term-youtube/__main__.py'
alias ty='term-youtube'

# others
alias sc='screen'
alias cat='bat'
alias top='htop'
alias c='clear ; echo -e "\e[35m$(pwd)"'
alias nwsu='networksetup -setairportnetwork en0'

# others
alias set-option='tmux set-option'
alias vim='nvim'
alias yd='youtube-dl'
alias pa='ps -e | grep'
alias h='tldr'
alias _='sudo'
