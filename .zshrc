# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

source <(fzf --zsh)

autoload -U promptinit; promptinit
prompt pure

# Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#   source /usr/share/zsh/manjaro-zsh-prompt
# fi

alias vim=nvim
alias grep=rg
alias vc="python -m venv ./.venv"
alias va="source ./.venv/bin/activate"
alias vd=deactivate

alias ll="ls -l"
alias la="ls -a"
alias lal="ls -al"
# alias open=xdg-open

open() {
	nohup xdg-open "$1" > /dev/null 2>&1 &
}

# pyenv seupt
eval "$(zoxide init zsh --cmd cd)"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
