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
Plug 'ashfinal/vim-colors-paper'
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace'
Plug 'kshenoy/vim-signature'

" tmux integration
Plug 'edkolev/tmuxline.vim'
Plug 'christoomey/vim-tmux-navigator'

" auto complete
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'mattn/emmet-vim'

" parenthes
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" project manager
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim' | Plug 'tacahiroy/ctrlp-funky'
Plug 'dyng/ctrlsf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mileszs/ack.vim'

" commenter
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/DoxygenToolkit.vim'

" cpp dev
Plug 'derekwyatt/vim-fswitch', {'for': ['cpp', 'c']} | Plug 'derekwyatt/vim-protodef'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'rsaraf/vim-advanced-lint'
Plug 'szw/vim-tags'
Plug 'ivalkeen/vim-ctrlp-tjump'
Plug 'rhysd/vim-clang-format'
Plug 'rhysd/clever-f.vim'
Plug 'rhysd/committia.vim'
Plug 'libclang-vim/libclang-vim'
Plug 'libclang-vim/clang-type-inspector.vim'

" python
Plug 'nvie/vim-flake8', {'for': 'python'}

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" for indent
Plug 'godlygeek/tabular'

" for markdown
" Plug 'plasticboy/vim-markdown'

" text-object
Plug 'kana/vim-textobj-user' | Plug 'kana/vim-textobj-entire'
Plug 'lucapette/vim-textobj-underscore', {'for': ['python', 'cpp', 'c']}
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-function'
Plug 'terryma/vim-expand-region'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'sgur/vim-textobj-parameter'

" other
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'zhaohuaxishi/ctrlp-header'
Plug 'zhaohuaxishi/vim-ctrlp-cmdpalette'
Plug 'zhaohuaxishi/auto-header'
" Plug '~/Workspace/ctags-helper'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/tpp.vim'
Plug 'vim-scripts/fcitx.vim'
Plug 'easymotion/vim-easymotion'

" uml
Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'

" Add plugins to &runtimepath
call plug#end()

" Put your non-Plugin stuff after this line

" +++++++++++++++++++++++++++++++++++++++
" +              插件配置               +
" +++++++++++++++++++++++++++++++++++++++

source ~/.vim/pluginconfig/ack.vim
source ~/.vim/pluginconfig/airline.vim
source ~/.vim/pluginconfig/colorscheme.vim
source ~/.vim/pluginconfig/ctrlp.vim
source ~/.vim/pluginconfig/ctrlsf.vim
source ~/.vim/pluginconfig/doxygentoolkit.vim
source ~/.vim/pluginconfig/flake8.vim
source ~/.vim/pluginconfig/fugitive.vim
source ~/.vim/pluginconfig/nerdtree.vim
source ~/.vim/pluginconfig/tagbar.vim
source ~/.vim/pluginconfig/tmuxline.vim
source ~/.vim/pluginconfig/ultisnips.vim
source ~/.vim/pluginconfig/visual-star.vim
source ~/.vim/pluginconfig/youcompleteme.vim
source ~/.vim/pluginconfig/cpplint.vim
source ~/.vim/pluginconfig/fswitch.vim
source ~/.vim/pluginconfig/easymotion.vim
source ~/.vim/pluginconfig/vim-tags.vim
source ~/.vim/pluginconfig/startify.vim
source ~/.vim/pluginconfig/nerdcommenter.vim
source ~/.vim/pluginconfig/comment_arguments.vim
