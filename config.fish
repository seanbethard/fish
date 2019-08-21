set -gx PATH ~/.rakudobrew/bin $PATH
set -gx PATH ~/rakudo/bin $PATH
set -gx PATH ~/.ghcup/env $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/.zef/bin $PATH
set -gx PATH ~/rakudo/share/perl6/site/bin $PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval {$HOME}/pkg/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
/Users/who/.rakudobrew/bin/rakudobrew init Fish | source
