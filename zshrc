# ~/.zshrc

export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin
export EDITOR="subl"
export BUNDLER_EDITOR="subl"
export MANPAGER="less -X" # Don’t clear the screen after quitting a manual page
export TERM="screen-256color"
export SOURCE_ANNOTATION_DIRECTORIES="spec"
export DISABLE_AUTO_TITLE=true

setopt auto_cd
cdpath=($HOME/dotfiles $HOME/Dropbox $HOME)

HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.zsh_history
HIST_STAMPS="yyyy-mm-dd"

source $HOME/dotfiles/zsh/oh-my-zsh
source $HOME/dotfiles/zsh/aliases
source $HOME/dotfiles/zsh/functions

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Include local settings
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local