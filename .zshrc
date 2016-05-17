source $HOME/.antigen.zsh

antigen use oh-my-zsh

antigen theme minimal

antigen bundle git
antigen bundle sudo
antigen bundle pip
antigen bundle command-not-found
#antigen bundle zsh-autosuggestions

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions src
antigen bundle uvaes/fzf-marks

antigen apply

source $HOME/.zsh/alias.zsh
source $HOME/.zsh/bindkey.zsh
source $HOME/.zsh/config.zsh
