export EDITOR="nvim"

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

export TOOLCHAIN_HOME=$HOME/Android/standalone-toolchains/android-toolchain-arm
export TOOLCHAIN_SYSROOT=$TOOLCHAIN_HOME/sysroot

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/:$TOOLCHAIN_HOME/bin
export PATH=$PATH:$HOME/.cargo/bin

function chpwd() {
    emulate -L zsh
    ls
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
