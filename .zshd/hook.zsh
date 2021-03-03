# _                 _    
#| |__   ___   ___ | | __ 
#| '_ \ / _ \ / _ \| |/ /
#| | | | (_) | (_) |   < 
#|_| |_|\___/ \___/|_|\_\
#

# if the current directory is changed, the current current directory is displayed
function chpwd_function0() {
    echo "\n\e[35m$(pwd)"
}

autoload -Uz add-zsh-hook
add-zsh-hook chpwd chpwd_function0
