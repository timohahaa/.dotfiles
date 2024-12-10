fpath=($DOTFILES/zsh $fpath)

source $DOTFILES/zsh/aliases

# NAVIGATION
setopt AUTO_CD           # Go to folder path without using cd.

setopt AUTO_PUSHD        # Push the old directory onto the stack on cd.
setopt PUSHD_IGNORE_DUPS # Do not store duplicates in the stack.
setopt PUSHD_SILENT      # Do not print the directory stack after pushd or popd.

setopt CORRECT           # Spelling correction



# HISTORY

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt SHARE_HISTORY             # Share history between all sessions.
#setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
#setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
#setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
#setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
#setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
#setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.


t=$'\uE0B0'
w=$'#ffffff'

export PROMPT=$'%B%F{green}%~ %F{#FFFFFF}❱%f%b '
#export PROMPT="%B%K{$w}%F{blue}%~ %K{blue}%F{$w}$t%k%F{blue}$t%f%b "
