status is-interactive; and begin
  
    set -gx TERM ghostty
    set -gx HYPRSHOT_DIR ~/Screenshots
    set -gx EDITOR nvim

    # Abbreviations
    abbr --add --position anywhere -- -C --color
    abbr --add -- gco 'git checkout'
    abbr --add -- l less
    abbr --add off 'doas poweroff'

    # Aliases
    alias y="yazi"

    # Interactive shell initialisation

    set -U fish_greeting
    fzf --fish | source
    zoxide init fish | source


end
