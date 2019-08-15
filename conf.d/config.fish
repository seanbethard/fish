
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval {$HOME}/pkg/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

