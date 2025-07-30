if status is-login
    set -gx PYTHON_HISTORY "/home/ns/.local/state/python/history"
end
  
if status is-interactive
    set -gx TERM ghostty
    set -gx HYPRSHOT_DIR ~/Screenshots
    set -gx EDITOR nvim
    set -gx PATH $PATH /usr/local/bin ~/bin ~/.local/state/nix/profile/bin ~/.local/state/cargo/bin /home/ns/linuxbrew/.linuxbrew/bin
    set -gx BROWSER "flatpak run com.brave.Browser"

    # Abbreviations
    abbr --add --position anywhere -- -C --color
    abbr --add -- gco 'git checkout'
    abbr --add -- l less
    abbr --add off 'doas poweroff'
    abbr --add addservice '~/.local/bin/addservice.sh'

    # Aliases
    alias y="yazi"

    # Interactive shell initialisation

    set -U fish_greeting

    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    fzf --fish | source
    zoxide init fish | source 
    starship init fish | source
end


