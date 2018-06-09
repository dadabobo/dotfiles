source $HOME/.zsh/antigen.zsh

antigen use oh-my-zsh

antigen theme robbyrussell

antigen bundle git
antigen bundle pip
antigen bundle vi-mode

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions src

antigen apply

source $HOME/.zsh/bindkey.zsh
source $HOME/.zsh/config.zsh
source $HOME/.zsh/local-alias.zsh

