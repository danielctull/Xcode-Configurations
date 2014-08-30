git submodule foreach --recursive '

	if [[ $path == "Configurations" ]]; then
		git checkout master
		git pull origin master
	fi
'