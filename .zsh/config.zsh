# for zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#for autojump
[[ -s /home/vlab/.autojump/etc/profile.d/autojump.sh ]] && source /home/vlab/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

export EDITOR="vim"
#export TERM="screen-256color"


#export PATH=/usr/local/gcc-6.1.0/bin:$PATH

#alias gcc="gcc-6.1.0"
#alias g++="g++-6.1.0"

export NDK_ROOT=/Users/guorongfei/Android/android-ndk-r12b
export TOOLCHAIN_PATH=/Users/guorongfei/Android/android-toolchain_arm_4.9_gnustl
export PATH=$NDK_ROOT:$TOOLCHAIN_PATH/bin:$PATH
export LD_LIBRARY_PATH=/Users/guorongfei/Workspace/libclink_android/lib

export PATH=/Users/guorongfei/Library/Android/sdk/platform-tools:$PATH

setxkbmap -layout us -option ctrl:nocaps
