#! /bin/bash

echo "Setting up all the weak simlinks"

declare -A files=( ["nvim"]="init.lua" ["tmux"]="tmux.conf" )

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

config_path="$HOME/.config"

for file in "${!files[@]}"; do
	val="${files[$file]}"
	source_path="$script_dir/$val"
	target_path="$config_path/$file/$val"
	echo "Creating symlink for $source_path"
	ln -s $source_path $target_path
done


echo "Done"
