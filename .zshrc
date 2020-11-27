# simple prompt
PROMPT='%F{027}%n%f %F{087}%~%f
%F{051}❯%f%F{123}❯%f%F{165}❯%f '

#Alias settings
alias set-option='tmux set-option'

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
zinit light momo-lab/zsh-abbrev-alias # 略語を展開する
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/history-search-multi-word
zinit light paulirish/git-open
zinit light b4b4r07/enhancd

###aliases
#others
alias sc='screen /dev/tty.usbserial-AI05V9H1Gi'
alias ls='exa -l -T -L 2'

#git aliases
alias gp='git push'
alias gc='git commit'
alias ga='git add'

#omit cd command
setopt auto_cd

#
zstyle ':completion:*:default' menu select=2

#start settings
#source ~/.tmux.conf
#tmux
#neofetch


