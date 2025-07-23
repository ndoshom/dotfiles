# .bashrc 

# If not running interactively, don't do anything 
[[ $- != *i* ]] && return 

export PATH="$PATH:/usr/local/bin":"$HOME/.local/scripts":"$HOME/.nix-profile/bin":"$HOME/.cargo/bin"

export FZF_DEFAULTS="--layout=reverse --border=bold --border=rounded --margin=3% --color=dark"

source /etc/profile.d/nix.sh
source $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh

alias ls='ls --color=auto' 
alias vpi='doas vpm i' 
alias vpr='doas vpm remove'
alias vps='doas vpm sync'
alias sudo='doas'
alias reboot='doas reboot' 
alias poweroff='doas poweroff' 


eval "$(fzf --bash)" 
exec fish
