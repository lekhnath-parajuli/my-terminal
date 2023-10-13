# ZSH
export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
ZSH_THEME="robbyrussell"

# ssh settings
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

# plugins
plugins=(git fast-syntax-highlighting $plugins)


# pyenv
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# starship
export STARSHIP_CONFIG=~/.config/starship.toml
