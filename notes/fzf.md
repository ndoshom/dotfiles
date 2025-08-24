# fzf
---
## List files
fzf
List files and select and enter to echo to terminal.

## Preview files on selections
fzf --preview 'bat --style=numbers --color=always {}' | xargs -n 1 nvim^C

## History
Control + R
You preview history command with fzf

## Command line
Control + t
Select files from the current directory.

## Select/Deselect
fzf --multi --reverse --prompt="special-snowflake> " -- "$@"
On Control + t
Tab -> Select files
Shift Tab -> Deselect files 

## Auto Completion
double stars and hit tab to auto complete command.
