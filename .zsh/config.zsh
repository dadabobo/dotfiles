# for zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR="vim"

export NDK_ROOT=/opt/android-ndk-r12b/
export TOOLCHAIN_PATH=/opt/android-toolchain_arm_4.9_gnustl
export PATH=$PATH:$NDK_ROOT:$TOOLCHAIN_PATH/bin

export SDK_ROOT=/home/guorongfei/Android/Sdk
export PATH=$PATH:$SDK_ROOT/platform-tools

export PATH=/Users/guorongfei/Library/Android/sdk/platform-tools:$PATH

setxkbmap -layout us -option ctrl:nocaps

eval `dircolors ~/.dircolors`

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
export TODOTXT_DEFAULT_ACTION=ls
alias t='todo-txt'
