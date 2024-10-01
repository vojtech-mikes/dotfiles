
autoload -Uz vcs_info

precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b'

red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)

setopt PROMPT_SUBST

alias c=clear
alias vim=nvim

PROMPT='[%n in ${red}%1~${reset} ${green}${vcs_info_msg_0_}${reset}]%# '

