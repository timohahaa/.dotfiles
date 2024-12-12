export DOTFILES="$HOME/.config"
export ZDOTDIR="$HOME/.config/zsh"

# fuck it we ball
export EDITOR="nvim"
export VISUAL="nvim"

# HISTORY
export HISTFILE="$ZDOTDIR/.zhistory" # History filepath
export HISTSIZE=10000                # Maximum events for internal history
export SAVEHIST=10000 

export TERM="xterm-256color"

source $ZDOTDIR/.private


# nvim 
export PATH="$HOME/.local/share/nvim/mason/bin/:$PATH" # mason lsp

# golang
export PATH=$PATH:/usr/local/go/bin

# grpc go tooling
export PATH="$PATH:$(go env GOPATH)/bin"
