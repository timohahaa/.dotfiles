#!/usr/bin/zsh
t=$'\uE0B0'
w=$'#ffffff'

setopt PROMPT_SUBST # enable prompt substitution

autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats '%b' '%a'
zstyle ':vcs_info:git*' actionformats '%b' '%a'

prompt_precmd () { 
    vcs_info 
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd prompt_precmd

#export PROMPT=$'%B%F{green}%~ %F{#FFFFFF}❱%f%b ${vcs_info_msg_0_}❱ '
export PROMPT=$'%B%F{green}%~ %F{#FFFFFF}❱%f%b '
#export PROMPT="%B%K{$w}%F{blue}%~ %K{blue}%F{$w}$t%k%F{blue}$t%f%b "
