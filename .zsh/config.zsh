# for fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

alias vim='nvim'
alias vi='nvim'

alias youtube-dl='youtube-dl --proxy socks5://127.0.0.1:1080/'

alias 510='adb -s 192.168.54.1:5555'
alias 3399='adb -s 192.168.54.1:6666'

export EDITOR="nvim"

export NDK_ROOT=/opt/android-ndk
export ANDROID_NDK_HOME=$NDK_ROOT
export PATH=$PATH:$NDK_ROOT/build

export TOOLCHAIN_HOME=/opt/standalone-toolchains/arm-gnustl
export TOOLCHAIN_SYSROOT=$TOOLCHAIN_HOME/sysroot
export PATH=$PATH:$TOOLCHAIN_HOME/bin

export SDK_ROOT=/opt/android-sdk
export PATH=$PATH:$SDK_ROOT/platform-tools:$SDK_ROOT/tools

export RASPBERRY_HOME=/opt/raspberry/tools/arm-bcm2708
export PATH=$PATH:$RASPBERRY_HOME/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin

export PATH=$PATH:$HOME/.local/bin

eval `dircolors ~/.dircolors`

export TERM=xterm-256color

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

function chpwd() {
    emulate -L zsh
    ls
}

source ~/.zsh/tmuxinator.zsh
