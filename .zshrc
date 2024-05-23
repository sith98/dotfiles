# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
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
alias va="source ./.venv/bin/activate"
alias vd=deactivate
# alias open=xdg-open

open() {
	nohup xdg-open "$1" > /dev/null 2>&1 &
}

eval "$(zoxide init zsh --cmd cd)"
