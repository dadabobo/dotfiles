# for zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#for autojump
[[ -s /home/vlab/.autojump/etc/profile.d/autojump.sh ]] && source /home/vlab/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

export EDITOR="vim"

#export PATH=/usr/local/gcc-6.1.0/bin:$PATH

#alias gcc="gcc-6.1.0"
#alias g++="g++-6.1.0"
