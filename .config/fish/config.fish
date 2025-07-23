status is-login; and begin

    # Login shell initialisation

end

status is-interactive; and begin

    # Abbreviations
    abbr --add --position anywhere -- -C --color
    abbr --add -- gco 'git checkout'
    abbr --add -- l less
    abbr --add off 'doas poweroff'

    # Aliases

    # Interactive shell initialisation

    set -U fish_greeting
    fzf --fish | source


end
