plugins=(git zsh-autosuggestions zsh-syntax-highlighting jump)

export ZSH="/home/jatin/.oh-my-zsh"

ZSH_THEME="zsh-multiline/multiline"

autoload -U compinit 
compinit
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
