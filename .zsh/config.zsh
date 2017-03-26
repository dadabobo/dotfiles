# for zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR="vim"

export NDK_ROOT=$HOME/Android/android-ndk-r13b
export TOOLCHAIN_HOME=$HOME/Android/standalone-toolchains/android-toolchain-arm
export TOOLCHAIN_SYSROOT=$TOOLCHAIN_HOME/sysroot
export PATH=$PATH:$TOOLCHAIN_HOME/bin

export SDK_ROOT=/home/guorongfei/Android/Sdk
export PATH=$PATH:$SDK_ROOT/platform-tools:$SDK_ROOT/tools
export GRADLE_HOME=/usr/local/android-studio/gradle/gradle-2.14.1
export PATH=$PATH:$GRADLE_HOME/bin

setxkbmap -layout us -option ctrl:nocaps

eval `dircolors ~/.dircolors`

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
export TODOTXT_DEFAULT_ACTION=ls
alias t='todo-txt'

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export PATH=$PATH:$JAVA_HOME/bin

export TERM=xterm-256color

#export PATH=$HOME/MinGW/usr/bin:$PATH
