# for fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh

alias vim='nvim'
alias vi='nvim'

alias youtube-dl='youtube-dl --proxy socks5://127.0.0.1:1086/'

export EDITOR="nvim"

export PATH=$PATH:$HOME/.local/bin

case `uname` in
  Darwin)
    # commands for OS X go here
    export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
  ;;
  Linux)
    # commands for Linux go here
    export ANDROID_SDK_ROOT=$HOME/Android/Sdk
  ;;
esac

export ANDROID_HOME=$ANDROID_SDK_ROOT
export ANDROID_NDK_HOME=$ANDROID_SDK_ROOT/ndk-bundle

export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
#export PATH=$PATH:$ANDROID_NDK_HOME/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/

# eval `dircolors ~/.dircolors`

# export TERM=xterm-256color

#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

function chpwd() {
    emulate -L zsh
    ls
}

source ~/.zsh/tmuxinator.zsh

alias cppcompile='c++ -std=c++11 -stdlib=libc++'
