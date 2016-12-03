source $HOME/.zsh/antigen.zsh

antigen use oh-my-zsh

#antigen theme lambda
#antigen theme Honukai
antigen theme minimal
#antigen theme jreese
#antigen theme arrow

antigen bundle git
antigen bundle sudo
antigen bundle pip
antigen bundle autojump
antigen bundle command-not-found
antigen bundle tmuxinator

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions src
antigen bundle uvaes/fzf-marks

antigen apply

source $HOME/.zsh/alias.zsh
source $HOME/.zsh/bindkey.zsh
source $HOME/.zsh/config.zsh
