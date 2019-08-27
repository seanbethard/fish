## Puffer's Pond

# fish var

echo -n Looking for worms... 

set -U EDITOR /usr/local/bin/emacs

set -gx PATH $HOME/.ghcup/env $PATH
set -gx PATH $HOME/.local/bin $PATH
set -gx PATH $HOME/.zef/bin $PATH
set -gx PATH $HOME/.rakudobrew/bin $PATH
set -gx PATH $HOME/rakudo/bin $PATH
set -gx PATH $HOME/rakudo/share/perl6/site/bin $PATH

echo 'Done'

# f

echo -n Setting the hook... 

abbr a 'ls -al'
abbr g 'git'
abbr ga 'git add'
abbr gb 'git branch'
abbr gbl 'git blame'
abbr gc 'git commit -m'
abbr gca 'git commit --amend -m'
abbr gco 'git checkout'
abbr gcp 'git cherry-pick'
abbr gd 'git diff'
abbr gf 'git fetch'
abbr gl 'git log'
abbr gm 'git merge'
abbr gp 'git push'
abbr gpf 'git push --force-with-lease'
abbr gpl 'git pull'
abbr gr 'git remote'
abbr grb 'git rebase'
abbr gs 'git status'
abbr gst 'git stash'
abbr l 'ls'

  echo 'Done'

## fish func

function velma
    echo "Sunshine and Blue Yummies"
end

function puffers
	e $HOME/.config/fish/config.fish
end

function gofish
	cd $HOME/.config/fish; s
end

function goschemas
	cd $HOME/corpuswork/schemas; s
end

function jup
	conda activate corpuswork; cd $HOME/corpuswork/schemas; jupyter notebook
end

function papple
	/usr/bin/python  $argv;
end

function e
	/usr/local/bin/emacs $argv;
end

function s
    git status
end

function fishrepo -d "Use a lure to fish a repo."
    getopts $argv | while read -l key value
        switch $key
            case l hostname
                set host $value
            case u username
                set name $value
            case r repository
                set repo $value
            case e eek
                set eek $value
            return
        end
    end
    command git clone "git@$host:$name/$repo.git"
end

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME $HOME/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# fish gen

{$HOME}/.rakudobrew/bin/rakudobrew init Fish | source
