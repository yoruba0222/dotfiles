# _                 _       __                  _   _                 
#| |__   ___   ___ | | __  / _|_   _ _ __   ___| |_(_) ___  _ __  ___ 
#| '_ \ / _ \ / _ \| |/ / | |_| | | | '_ \ / __| __| |/ _ \| '_ \/ __|
#| | | | (_) | (_) |   <  |  _| |_| | | | | (__| |_| | (_) | | | \__ \
#|_| |_|\___/ \___/|_|\_\ |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
#

# if the current directory is changed, the current current directory is displayed
function chpwd_function0() {
    echo "\n\e[35m$(pwd)"
}

autoload -Uz add-zsh-hook
add-zsh-hook chpwd chpwd_function0
