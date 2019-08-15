function gitclone --description 'Clones a repository.'
	getopts $argv | while read -l key value
switch $key
case l host
set host $value
case u gitusername
set un $value
case r repo
set repo $value
case h help
_clonerepo_help >&2
return
end

end
command git clone "git@$host:$un/$repo.git"
end
