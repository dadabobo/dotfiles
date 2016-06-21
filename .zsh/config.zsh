# for zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#for autojump
[[ -s /home/vlab/.autojump/etc/profile.d/autojump.sh ]] && source /home/vlab/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

export EDITOR="vim"
