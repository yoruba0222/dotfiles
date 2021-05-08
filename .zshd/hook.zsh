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

# if comand not found
function command_not_found_handler() {
    echo -e     "\e[31m                        __            __ \n" \
		            ".--.--.--.---.-.-----.|  |_.-----.--|  |\n" \
	                "|  |  |  |  _  |__ --||   _|  -__|  _  |\n" \
					"|________|___._|_____||____|_____|_____|\n"
}

autoload -Uz add-zsh-hook
add-zsh-hook chpwd chpwd_function0

