#!/bin/bash

# << installations
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
zsh -c "$(curl -fsSL --proto-redir -all, https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh)"
# >> installations

# >> git clones
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# << git clones

# << configurations
cp ./terminal/starship/starship.toml ~/.config/starship.toml
# >> configurations

# << themes
open ./terminal/iterm/Snazzy.itermcolors
# >> themes


# << nvim
cp -R ./nvim ~/.config/
# >> nvim
