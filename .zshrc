# used from March 2 2021... 
#
#   __ _     _ _       _                 _              
#  / _(_) __| (_) ___ ( )___     _______| |__  _ __ ___ 
# | |_| |/ _` | |/ _ \|// __|   |_  / __| '_ \| '__/ __|  #
# |  _| | (_| | | (_) | \__ \  _ / /\__ \ | | | | | (__   #
# |_| |_|\__,_|_|\___/  |___/ (_)___|___/_| |_|_|  \___|  #
#                                                         #
                                              ############


#
# prompt seettings
#

# normal prompt
PROMPT="[%F{blue}%n%f]%f%F{green}❯ %f"

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

#
# source athor setting files
#

ZSHHOME="${HOME}/Repositories/dotfiles/.zshd"

if [ -d $ZSHHOME -a -r $ZSHHOME -a \
     -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.zsh ]] &&
            [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi



#source .zshd/alias.zsh
#source .zshd/hook.zsh

echo "\e[35m$(pwd)"
