# _                 _    
#| |__   ___   ___ | | __ 
#| '_ \ / _ \ / _ \| |/ /
#| | | | (_) | (_) |   < 
#|_| |_|\___/ \___/|_|\_\
#

# if the current directory is changed, the current current directory is displayed
function chpwd_function0() {
    echo "\n\e[2m\e[34m[\e[0m\e[34m$(pwd)\e[0m\e[2m\e[34m]"
}

autoload -Uz add-zsh-hook
add-zsh-hook chpwd chpwd_function0
