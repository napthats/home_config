autoload -U compinit
compinit
PROMPT="%B%F{blue}%m:%n%%%f%b "
RPROMPT="[%~]"
HISTFILE=~/.zsh_history
HISTSIZE=10000000000
SAVEHIST=10000000000
setopt hist_ignore_dups
setopt share_history
setopt auto_pushd

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
alias ls="ls --color"
alias gls="gls --color"
alias emacs="emacs -nw"
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z} r:|[-_.]=**'
