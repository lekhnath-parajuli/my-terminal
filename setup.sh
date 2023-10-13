#!/bin/bash

# installations
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
zsh -c "$(curl -fsSL --proto-redir -all, https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh)"

# configurations
cp ./iterm/starship.toml ~/.config/starship.toml

open ./iterm/Snazzy.itermcolors

