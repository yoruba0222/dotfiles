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
alias lla='lsd -l -a'
alias llt='lsd -l --tree'

# cd
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ~='cd ~'
alias df='cd ~/Dev/dotfiles'
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
alias c='clear ; cust_pwd'
alias nwsu='networksetup -setairportnetwork en0'
alias set-option='tmux set-option'
alias vim='nvim'
alias yd='youtube-dl'
alias pa='ps -e | grep'
alias h='tldr'
alias wttr='display_weather'
alias _='sudo'

# system setings
alias ssleep='osascript -e 'tell app "Finder" to sleep''
alias sreboot='sudo reboot'
alias sshutdown='sudo shutdown -h now'

cust_pwd() {
    HOME_PATH=$HOME 
    CURRENT_PATH=$(pwd)

    case "$HOME_PATH" in
        "$CURRENT_PATH")
            echo "\e[2m\e[34m[\e[0m\e[34m~\e[0m\e[2m\e[34m]";;
        "${CURRENT_PATH:0:12}")
            CURRENT_PATH=${CURRENT_PATH#*/}
            CURRENT_PATH=${CURRENT_PATH#*/}
            CURRENT_PATH=${CURRENT_PATH#*/}
            home="~/"
            echo "\e[2m\e[34m[\e[0m\e[34m$home$CURRENT_PATH\e[0m\e[2m\e[34m]";;
        *)
            echo "\e[2m\e[34m[\e[0m\e[34m$CURRENT_PATH\e[0m\e[2m\e[34m]";;
    esac
}

display_weather() {
    baseURL="wttr.in/"
    URL=$baseURL$1
    curl $URL
}
