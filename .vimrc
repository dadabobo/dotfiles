" ++++++++++++++++++++++++++++++++++++++++
" +         name: .vimrc                 +
" +         author: steven guo           +
" +         last update: 2015-8-30       +
" ++++++++++++++++++++++++++++++++++++++++


" ++++++++++++++++++++++++++++++++++++++++
" +   	        基础选项配置             +
" ++++++++++++++++++++++++++++++++++++++++

" 非兼容模式
set nocompatible

" 默认不显示行号
set nonumber

" 搜索设置
set ic
set nohlsearch

" 默认开启语法高亮
syntax on

" TAB 缩进设置
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" 缩进设置，设置基于文件的类型的缩进
set autoindent
set cino=(0,W4
filetype plugin indent on

" 改变超过 80 个字符之后的区域，这样就可以起到提示作用
set colorcolumn=75
set textwidth=74
set fo+=mB
set wrap

" 编码设置
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,GB2312,big5

" 高亮当前行
set cursorline

" 智能补全命令行
set wildmenu

" 不使用代码折叠功能
set foldmethod=syntax
set nofoldenable

" 不使用 swapfile
set noswapfile

" ++++++++++++++++++++++++++++++++++++++++
" +             快捷键配置               +
" ++++++++++++++++++++++++++++++++++++++++

map <F2> :set number! number?<cr>
set pastetoggle=<F3>
map <F4> :set hlsearch! hlsearch?<cr>

nnoremap <F9> :TagbarToggle<cr>

" 绑定 jk <Esc>，这样就不用按角落里面的 <Esc>
inoremap jk <Esc>

" 绑定 space 到 : 按键
noremap <space> :

" 绑定大写的 HL 为行首和行尾的快捷键
noremap H ^
noremap L $

" 重新绑定大小写转换功能的快捷键
nnoremap gu gU
nnoremap gl gu

" 调换 a 和 A 的功能
"nnoremap a A
"nnoremap A a

" 物理行上直接切换
"nnoremap k gk
"nnoremap gk k
"nnoremap j gj
"nnoremap gj j

" 输入模式下快速的移动光标
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-a> <Home>
inoremap <C-e> <End>

" 命令行模式 Ctrl-j 下一条命令，Ctrl-k 上一条命令
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" 使用超级用户权限编辑这个文件
cmap sw w !sudo tee >/dev/null %

" 修改leader键
let mapleader = ';'

" ++++++++++++++++++++++++++++++++++++++++
" +             常用插件安装             +
" ++++++++++++++++++++++++++++++++++++++++


filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'bronson/vim-trailing-whitespace'

" auto complete
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/neocomplete.vim'
Plugin 'ervandew/supertab'

" parenthes
Plugin 'Raimondi/delimitMate'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

" project manager
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/neomru.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/unite-outline'

" commenter
Plugin 'scrooloose/nerdcommenter'
Plugin 'DoxygenToolkit.vim'

" cpp devlop
Plugin 'derekwyatt/vim-fswitch'
Plugin 'derekwyatt/vim-protodef'
Plugin 'octol/vim-cpp-enhanced-highlight'

" more powerfual tools
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'majutsushi/tagbar'
Plugin 'Chiel92/vim-autoformat'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" +++++++++++++++++++++++++++++++++++++++
" +       	 插件配置               +
" +++++++++++++++++++++++++++++++++++++++

source ~/.vim/pluginconfig/vim-colors-solarized.vim
source ~/.vim/pluginconfig/airline.vim
source ~/.vim/pluginconfig/tmuxline.vim
source ~/.vim/pluginconfig/nerdtree.vim
source ~/.vim/pluginconfig/unite.vim
source ~/.vim/pluginconfig/doxygentoolkit.vim
source ~/.vim/pluginconfig/neocomplete.vim
source ~/.vim/pluginconfig/supertab.vim
source ~/.vim/pluginconfig/ultisnips.vim
source ~/.vim/pluginconfig/easymotion.vim
source ~/.vim/pluginconfig/vim-autoformat.vim
