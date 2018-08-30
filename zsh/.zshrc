# Automatically start ssh agent
source /home/chapterzero/.ssh/.auto_sshagent.sh

bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# FZF Key bindings
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Environment variables
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/home/chapterzero/.config/composer/vendor/bin
export EDITOR=vim
export SYSTEMD_EDITOR=vim

 # Fix home and end button
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "${terminfo[kdch1]}" delete-char

# No smiley after command failed
zstyle ':prompt:grml:right:setup' use-rprompt false
zstyle ':prompt:grml:right:setup' items ''
