# for fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

alias vim='nvim'
alias vi='nvim'

export EDITOR="nvim"

export NDK_ROOT=/opt/android-ndk
export ANDROID_NDK_HOME=$NDK_ROOT
export PATH=$PATH:$NDK_ROOT/build

export TOOLCHAIN_HOME=/opt/standalone-toolchains/arm-gnustl
export TOOLCHAIN_SYSROOT=$TOOLCHAIN_HOME/sysroot
export PATH=$PATH:$TOOLCHAIN_HOME/bin

export SDK_ROOT=/opt/android-sdk
export PATH=$PATH:$SDK_ROOT/platform-tools:$SDK_ROOT/tools

export PATH=$PATH:$HOME/.local/bin

#eval `dircolors ~/.dircolors`

export TERM=xterm-256color

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'
