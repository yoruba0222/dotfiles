# _                 _    
#| |__   ___   ___ | | __ 
#| '_ \ / _ \ / _ \| |/ /
#| | | | (_) | (_) |   < 
#|_| |_|\___/ \___/|_|\_\
#

# if the current directory is changed, the current current directory is displayed
function chpwd_function0() {
    HOME_PATH=$HOME
    CURRENT_PATH=$(pwd)
    
    case "$HOME_PATH" in
        "$CURRENT_PATH") 
            echo "\n\e[2m\e[34m[\e[0m\e[34m~\e[0m\e[2m\e[34m] $(parse_git_branch)";;
        "${CURRENT_PATH:0:12}")
            CURRENT_PATH=${CURRENT_PATH#*/}
            CURRENT_PATH=${CURRENT_PATH#*/}
            CURRENT_PATH=${CURRENT_PATH#*/}
            home="~/"
            echo "\n\e[2m\e[34m[\e[0m\e[34m$home$CURRENT_PATH\e[0m\e[2m\e[34m] $(parse_git_branch)";;
        *)
            echo "\n\e[2m\e[34m[\e[0m\e[34m$CURRENT_PATH\e[0m\e[2m\e[34m] $(parse_git_branch)";;
    esac
}

autoload -Uz add-zsh-hook
add-zsh-hook chpwd chpwd_function0
