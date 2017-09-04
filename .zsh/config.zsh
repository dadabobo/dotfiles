# for fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

alias vim='nvim'
alias vi='nvim'

export EDITOR="nvim"

export NDK_ROOT=$HOME/Android/android-ndk-r13b
export ANDROID_NDK_HOME=$HOME/Android/android-ndk-r13b
export TOOLCHAIN_HOME=$HOME/Android/standalone-toolchains/android-toolchain-arm
export TOOLCHAIN_SYSROOT=$TOOLCHAIN_HOME/sysroot
export PATH=$PATH:$TOOLCHAIN_HOME/bin

export SDK_ROOT=/home/guorongfei/Android/Sdk
export PATH=$PATH:$SDK_ROOT/platform-tools:$SDK_ROOT/tools
export GRADLE_HOME=/usr/local/android-studio/gradle/gradle-2.14.1
export PATH=$PATH:$GRADLE_HOME/bin

export ANDROID_HOME=$HOME/Android/Sdk

#eval `dircolors ~/.dircolors`

export TERM=xterm-256color

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

export PATH=$PATH:$HOME/Android/gradle/gradle-3.5/bin
