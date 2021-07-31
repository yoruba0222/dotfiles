#used used from March 2 2021... 
#
#   __ _     _ _       _                 _              
#  / _(_) __| (_) ___ ( )___     _______| |__  _ __ ___ 
# | |_| |/ _` | |/ _ \|// __|   |_  / __| '_ \| '__/ __|  #
# |  _| | (_| | | (_) | \__ \  _ / /\__ \ | | | | | (__   #
# |_| |_|\__,_|_|\___/  |___/ (_)___|___/_| |_|_|  \___|  #
#                                                         #
                                              ############
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk
zinit light momo-lab/zsh-abbrev-alias # Expand abbreviations
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/history-search-multi-word
zinit light paulirish/git-open
zinit light b4b4r07/enhancd

# github gh command setting
eval "$(gh completion -s zsh)"



. `brew --prefix`/etc/profile.d/z.sh
# source athor setting files
#

ZSHHOME="${HOME}/Dev/dotfiles/.zshd"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi

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
