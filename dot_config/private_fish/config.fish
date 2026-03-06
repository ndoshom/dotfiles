

# ╔══════════════════════════════════════════════════════════╗
# ║                  Fish Shell Configuration                ║
# ║              Elegant · Fast · Distrobox-ready            ║
# ╚══════════════════════════════════════════════════════════╝

# ── Environment ───────────────────────────────────────────
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx TERM xterm-256color

# Disable greeting
set fish_greeting ""
set -Ue fish_key_bindings

# ── Prompt ────────────────────────────────────────────────
# Install Starship first: curl -sS https://starship.rs/install.sh | sh
# If you have starship, uncomment the next line and remove the function below:
# starship init fish | source

function fish_prompt
    set -l last_status $status
    set -l cwd (basename (prompt_pwd))
    set -l git_branch ""

    # Git branch
    if type -q git
        set -l branch (git branch --show-current 2>/dev/null)
        if test -n "$branch"
            set git_branch " on ($branch)"
        end
    end

    # Distrobox indicator
    set -l box_indicator ""
    if set -q DISTROBOX_ENTER_PATH
        set box_indicator "[box] "
    else if set -q CONTAINER_ID
        set box_indicator "[box] "
    end

    # Status indicator
    set -l status_color (set_color green)
    set -l arrow "❯"
    if test $last_status -ne 0
        set status_color (set_color red)
    end

    # Draw prompt
    echo -n (set_color cyan)"$box_indicator"
    echo -n (set_color blue --bold)"$cwd"
    echo -n (set_color magenta)"$git_branch"
    echo -n " $status_color$arrow "(set_color normal)
end

function fish_right_prompt
    set -l now (date "+%H:%M")
    echo -n (set_color brblack)"$now "(set_color normal)
end


# ── Colors ────────────────────────────────────────────────
set fish_color_command       cyan
set fish_color_param         white
set fish_color_error         red --bold
set fish_color_comment       brblack
set fish_color_quote         yellow
set fish_color_autosuggestion brblack
set fish_color_operator      magenta
set fish_color_escape        brmagenta
set fish_pager_color_selected_background --background=brblack


# ── Distrobox Shortcuts ───────────────────────────────────

# Enter a container (fuzzy select if no arg)
function dbe
    if test (count $argv) -eq 0
        set -l box (distrobox list --no-color | tail -n +2 | awk '{print $3}' | fzf --prompt="Enter container: ")
        if test -n "$box"
            distrobox enter $box
        end
    else
        distrobox enter $argv[1]
    end
end

# Create a new container
function dbc
    if test (count $argv) -lt 2
        echo "Usage: dbc <name> <image>"
        echo ""
        echo "Common images:"
        echo "  arch     → quay.io/toolbx/arch-toolbox:latest"
        echo "  alpine   → quay.io/toolbx-images/alpine-toolbox:3.20"
        echo "  ubuntu   → quay.io/toolbx-images/ubuntu-toolbox:22.04"
        echo "  fedora   → quay.io/toolbx-images/fedora-toolbox:40"
        echo "  bazzite  → ghcr.io/ublue-os/bazzite-arch:latest"
        return 1
    end
    distrobox create --name $argv[1] --image $argv[2]
end

# Quick create with preset images
function dbc-arch
    distrobox create --name $argv[1] --image quay.io/toolbx/arch-toolbox:latest
end

function dbc-alpine
    distrobox create --name $argv[1] --image quay.io/toolbx-images/alpine-toolbox:3.20
end

function dbc-ubuntu
    distrobox create --name $argv[1] --image quay.io/toolbx-images/ubuntu-toolbox:22.04
end

function dbc-bazzite
    distrobox create --name $argv[1] --image ghcr.io/ublue-os/bazzite-arch:latest
end

# List containers
function dbl
    distrobox list
end

# Remove a container
function dbr
    if test (count $argv) -eq 0
        set -l box (distrobox list --no-color | tail -n +2 | awk '{print $3}' | fzf --prompt="Remove container: ")
        if test -n "$box"
            read -l -P "Remove '$box'? [y/N] " confirm
            if test "$confirm" = y
                distrobox rm $box
            end
        end
    else
        distrobox rm $argv[1]
    end
end

# Stop a container
function dbs
    distrobox stop $argv[1]
end

# Export an app from current container
function dbx
    distrobox-export --app $argv[1]
end

# Export a binary from current container
function dbxb
    distrobox-export --bin $argv[1] --export-path ~/.local/bin
end

# Backup a container
function db-backup
    if test (count $argv) -lt 2
        echo "Usage: db-backup <container-name> <output-file.tar>"
        return 1
    end
    echo "Committing container $argv[1]..."
    podman commit $argv[1] $argv[1]-backup
    echo "Saving to $argv[2]..."
    podman save $argv[1]-backup -o $argv[2]
    echo "✓ Backup saved to $argv[2]"
end

# Restore a container from backup
function db-restore
    if test (count $argv) -lt 2
        echo "Usage: db-restore <backup.tar> <new-container-name>"
        return 1
    end
    echo "Loading image from $argv[1]..."
    podman load -i $argv[1]
    distrobox create --name $argv[2] --image (podman images --format "{{.Repository}}" | head -1)
    echo "✓ Container $argv[2] restored"
end


# ── General Aliases ───────────────────────────────────────
alias ll="ls -lah --color=auto"
alias la="ls -A --color=auto"
alias ..="cd .."
alias ...="cd ../.."
alias grep="grep --color=auto"
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"
alias mkdir="mkdir -pv"
alias df="df -h"
alias du="du -sh"
alias free="free -h"
alias reload="source ~/.config/fish/config.fish && echo '✓ Config reloaded'"

# Editor shortcuts
alias v="$EDITOR"
alias vi="$EDITOR"

# System
alias sysup="flatpak update && echo '✓ Done'"


# ── Keybindings ───────────────────────────────────────────
# Ctrl+E → enter a distrobox container
bind \ce 'dbe; commandline -f repaint'

# Ctrl+L → clear screen (default, but explicit)
bind \cl 'clear; commandline -f repaint'


# ── PATH ──────────────────────────────────────────────────
fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin


# ── Zoxide (smart cd) — install: brew/apk install zoxide ──
# zoxide init fish | source

# ── fzf keybindings — install fzf for fuzzy finding ───────
# fzf --fish | source
