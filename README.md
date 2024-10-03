Obsahuje konfig pro

- zsh
- kitty
- nvim

Taky potřebuješ

> Tyto dependence se instalují přes brew. Pokud jsi na Linuxu tak si je budeš muset nainstalovat pomocí jiného package manageru, nebo si stáhnout brew pro Linux, ale jiný package manager bude lepší volba.

- stow
- fzf
- fd
- ripgrep
- black
- isort
- stylua
- p10k

Všechny dependence můžeš nainstalovat pomocí shell scriptu `setup.sh`

```bash
# Add rwx permission to the current user
chmod 700 ./setup.sh
# Launch the script
./setup.sh
```

Instalace pomocí stow

```
stow <path_to_dotfiles_repo>
```

https://www.gnu.org/software/stow/
