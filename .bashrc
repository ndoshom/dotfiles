# .bashrc 

# If not running interactively, don't do anything 
[[ $- != *i* ]] && return 

export PATH="$PATH:/usr/local/bin":"$HOME/.local/bin":"$HOME/.local/state/cargo/bin":/home/linuxbrew/.linuxbrew/bin
export FZF_DEFAULTS="--layout=reverse --border=bold --border=rounded --margin=3% --color=dark"

export XDG_STATE_HOME="${HOME}"/.local/state
export HISTFILE="${XDG_STATE_HOME}"/bash/history
export XDG_DATA_HOME="${HOME}"/.local/share
export CARGO_HOME="${XDG_DATA_HOME}"/cargo
export XDG_CONFIG_HOME="${HOME}"/.config
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export LESSHISTFILE="${XDG_STATE_HOME}"/lesshst
export PYTHONSTARTUP="$XDG_CONFIG_HOME"/python/pythonrc
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc


alias ls='ls --color=auto' 
alias vpi='doas vpm i' 
alias vpr='doas vpm remove'
alias vps='doas vpm sync'
alias sudo='doas'
alias reboot='doas reboot' 
alias poweroff='doas poweroff' 


eval "$(fzf --bash)" 
. "$HOME/.cargo/env"
