#! /usr/bin/env python3

import os

class cd:
    """Context manager for changing the current working directory"""
    def __init__(self, newPath):
        self.newPath = os.path.expanduser(newPath)

    def __enter__(self):
        self.savedPath = os.getcwd()
        os.chdir(self.newPath)

    def __exit__(self, etype, value, traceback):
        os.chdir(self.savedPath)


home_path = os.getenv("HOME")
cwd = os.getcwd()

def excute_and_echo(cmd):
    """Just echo the cmd before execute it."""
    print(cmd)
    os.system(cmd)

def config_vim():
    """
    Configue Vim with the script from this repo.

    It will download the plguin manager Vundle, use it
    to install plugins and then create the symbol link
    of .vim and .vimrc to the corresponding file in this repo.
    """
    cmd_list = []

    # clone the plugin manager
    dst = cwd + "/.vim/bundle/Vundle.vim"
    if os.path.lexists(dst):
        cmd_list.append("mv {0} {0}.bak".format(dst))
    src = "https://github.com/VundleVim/Vundle.vim.git"
    clone_cmd = "git clone {} {}".format(src, dst)
    cmd_list.append(clone_cmd)

    # create the symbol link
    file_list = {".vim", ".vimrc"}
    for fname in file_list:
        dest_file = home_path + "/" + fname

        if os.path.lexists(dest_file):
            cmd_list.append("mv {0} {0}.bak".format(dest_file))
        cmd_list.append("ln -s {}/{} {}".format(cwd, fname, dest_file))


    # install plugin
    cmd_list.append("vim +PluginInstall +qall")

    for i, cmd in enumerate(cmd_list):
        print("STEP {}: {}".format(i+1), end='')
        excute_and_echo(cmd)

    # compile youcompleteme
    with cd("{}/.vim/bundle/YouCompleteMe/".format(cwd)):
        excute_and_echo("git submodule update --init --recursive")
        excute_and_echo("./install.py --clang-completer")

def install_required_softwares():
    """
    Install the required software that make plugin works.
    """
    softwarename = {
        "ag"        : "silversearcher-ag",
        "ctags"     : "ctags",
        "cscope"    : "cscope",
        "cmake"     : "cmake",
        "build"     : "build-essential",
        "pythondev" : "python-dev",
        "pip3"      : "python3-pip"
        "autojump"  : "autojump"
        "zsh"       : "zsh"
        "tmux"      : "tmux"
    }
    excute_and_echo("sudo apt-get install {ag} {ctags} {cscope} "
                    "{cmake} {build} {pythondev} {pip3} {autojump} "
                    "{zsh} {tmux}".format(**softwarename))

def config_zsh():
    pass

def config_tmux():
    pass

def install_dotfiles():
    install_required_softwares()
    config_vim()
    config_zsh()
    config_tmux()

def remove_dotfiles():
    cmd_list = []
    if os.path.lexists(vim_dir + ".bak"):
        cmd_list.append("rm {}".format(vim_dir))
        cmd_list.append("mv {0}.bak {0}".format(vim_dir))

    if os.path.lexists(vimrc + ".bak"):
        cmd_list.append("rm {}".format(vimrc))
        cmd_list.append("mv {0}.bak {0}".format(vimrc))

    for i, cmd in enumerate(cmd_list):
        print("STEP {}: ".format(i+1), end='')
        print(cmd)

def print_usage():
    print("""\
./install.py [option]

options:
-u: uninstall
          """)

def main(argv):
    # install vim plugins

    if len(argv) == 1:
        install_dotfiles()
    elif argv[1] == "-u":
        remove_dotfiles()
    else:
        print_usage()

if __name__ == "__main__":
    import sys
    main(sys.argv)
