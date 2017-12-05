# for fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim='nvim'
alias vi='nvim'

alias youtube-dl='youtube-dl --proxy socks5://127.0.0.1:1086/'

alias 510='adb -s 192.168.54.1:5555'
alias 3399='adb -s 192.168.54.1:6666'

export EDITOR="nvim"

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export ANDROID_HOME=$ANDROID_SDK_ROOT
export ANDROID_NDK_HOME=$ANDROID_SDK_ROOT/ndk-bundle/

export PATH=$PATH:$HOME/.local/bin:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_NDK_HOME/toolchains/x86_64-4.9/prebuilt/darwin-x86_64/bin/

# eval `dircolors ~/.dircolors`

# export TERM=xterm-256color

#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

function chpwd() {
    emulate -L zsh
    ls
}

source ~/.zsh/tmuxinator.zsh

alias cppcompile='c++ -std=c++11 -stdlib=libc++'
