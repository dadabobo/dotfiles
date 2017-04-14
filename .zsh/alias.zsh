alias tmux="tmux -2"
alias kad="vim $HOME/Documents/daily/`date +%Y-%m-%d`.md"
alias o="xdg-open ."
alias cpplintall='find . -name "*.h" -or -name "*.cpp" -or -name "*.cc" -or -name "*.hpp" -or -name "*.c" | xargs cpplint 2>&1 | ag -v "Ignor"'

eval "$(thefuck --alias)"

#alias vim="mvim -v"
#alias vi="vim"

#alias g++="/usr/local/bin/g++-6"
#alias gcc="/usr/local/bin/gcc-6"
#alias cpp="/usr/local/bin/cpp-6"
#alias c++="/usr/local/bin/c++-6"
