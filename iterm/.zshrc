export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
# >> plugins
plugins=(git zsh-autosuggestions fast-syntax-highlighting $plugins)
# << plugins
source $ZSH/oh-my-zsh.sh


# >> ssh settings
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"
# << ssh settings

# >>  pyenv
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# << pyenv 

# >> nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
# << nvm

# >> starship
export STARSHIP_CONFIG=~/.config/starship.toml
# << starship
