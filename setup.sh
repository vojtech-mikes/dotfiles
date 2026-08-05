#! /bin/bash

echo "Setting up all the weak simlinks"

files=("init.lua" "tmux.conf")

declare -A dirs=( ["init.lua"]="nvim" ["tmux.conf"]="tmux" )

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

config_path="$HOME/.config"

for file in "${files[@]}"; do
  abs_path="$script_dir/$file"
  dest_path="$config_path/${dirs[$file]}/$file"
  echo "Creating simlink for: $abs_path -> $dest_path"
  ln -s $abs_path $dest_path
done

echo "Done"
