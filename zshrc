export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="apple"
plugins=(zsh-autosuggestions)
alias vim=nvim
source $ZSH/oh-my-zsh.sh

# opam configuration
[[ ! -r /Users/vojtechmikes/.opam/opam-init/init.zsh ]] || source /Users/vojtechmikes/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
export PATH=$PATH:$HOME/go/bin

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
