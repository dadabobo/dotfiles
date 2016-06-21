" ++++++++++++++++++++++++++++++++++++++++
" +         name: .vimrc                 +
" +         author: steven guo           +
" +         last update: 2016-03-20      +
" ++++++++++++++++++++++++++++++++++++++++

source ~/.vim/pluginconfig/vimcommon.vim

" ++++++++++++++++++++++++++++++++++++++++
" +             常用插件安装             +
" ++++++++++++++++++++++++++++++++++++++++

" enable matchit
runtime macro/matchit.vim

call plug#begin('~/.vim/plugged')

" themes
"Plug 'flazz/vim-colorschemes'
"Plug 'altercation/vim-colors-solarized'
Plug 'sickill/vim-monokai'
"Plug 'tomasr/molokai'
"Plug 'jdkanani/vim-material-theme'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-scripts/oceandeep'
"Plug 'chriskempson/vim-tomorrow-theme'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace'
Plug 'kshenoy/vim-signature'
Plug 'edkolev/tmuxline.vim'

" auto complete
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'

" parenthes
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" project manager
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim' | Plug 'tacahiroy/ctrlp-funky'
Plug 'dyng/ctrlsf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/syntastic', {'for': ['python']}
Plug 'mileszs/ack.vim'

" commenter
Plug 'scrooloose/nerdcommenter'
Plug 'DoxygenToolkit.vim'

" cpp dev
Plug 'derekwyatt/vim-fswitch', {'for': ['cpp', 'c']} | Plug 'derekwyatt/vim-protodef'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt', {'for': ['python', 'c', 'cpp']}
Plug 'google/vim-glaive'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-misc' | Plug 'xolox/vim-easytags', {'for': ['cpp', 'c']}

" python
"Plug 'nvie/vim-flake8', {'for': 'python'}

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" for indent
Plug 'godlygeek/tabular'

" todo list
Plug 'vitalk/vim-simple-todo', {'for': 'markdown'}
"Plug 'freitass/todo.txt-vim'

" text-object
Plug 'kana/vim-textobj-user' | Plug 'kana/vim-textobj-entire'
Plug 'lucapette/vim-textobj-underscore', {'for': ['python', 'cpp', 'c']}
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-indent', {'for': 'python'}
Plug 'kana/vim-textobj-function'

" other
Plug 'tpope/vim-unimpaired'
Plug 'triglav/vim-visual-increment'
"Plug 'KabbAmine/zeavim.vim'
"Plug '~/Workspace/ctrlp-header'
Plug 'zhaohuaxishi/ctrlp-header'

" Add plugins to &runtimepath
call plug#end()

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" +++++++++++++++++++++++++++++++++++++++
" +		         插件配置               +
" +++++++++++++++++++++++++++++++++++++++

source ~/.vim/pluginconfig/colorscheme.vim
source ~/.vim/pluginconfig/airline.vim
source ~/.vim/pluginconfig/tmuxline.vim
source ~/.vim/pluginconfig/nerdtree.vim
source ~/.vim/pluginconfig/doxygentoolkit.vim
source ~/.vim/pluginconfig/ultisnips.vim
source ~/.vim/pluginconfig/autoformat.vim
source ~/.vim/pluginconfig/youcompleteme.vim
source ~/.vim/pluginconfig/fugitive.vim
source ~/.vim/pluginconfig/ack.vim
source ~/.vim/pluginconfig/ctrlp.vim
source ~/.vim/pluginconfig/ctrlsf.vim
source ~/.vim/pluginconfig/nerdcommenter.vim
source ~/.vim/pluginconfig/flake8.vim
source ~/.vim/pluginconfig/visual-star.vim
source ~/.vim/pluginconfig/acsnum.vim
