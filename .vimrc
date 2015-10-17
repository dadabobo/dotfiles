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
set colorcolumn=81
set textwidth=80
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

" gui 设置
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" 删除设置
set backspace=eol,start,indent

" 滚动的时候保留的行数
set scrolloff=10

" vimrc文件修改之后自动加载
autocmd! bufwritepost _vimrc source %
autocmd! bufwritepost .vimrc source %

"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu

" ++++++++++++++++++++++++++++++++++++++++
" +             快捷键配置               +
" ++++++++++++++++++++++++++++++++++++++++

map <F2> :set number! number?<cr>
map <F4> :set hlsearch! hlsearch?<cr>

nnoremap <F9> :TagbarToggle<cr>

set pastetoggle=<F3>
au InsertLeave * set nopaste

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

" 使用方向键切换 buffer
noremap <C-b>n :bn<CR>
noremap <C-b>p :bp<CR>
noremap <C-b>d :bdelete<CR>

" ++++++++++++++++++++++++++++++++++++++++
" +             常用插件安装             +
" ++++++++++++++++++++++++++++++++++++++++


call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" themes
Plug 'bling/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'bronson/vim-trailing-whitespace'

" auto complete
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'

" parenthes
Plug 'Raimondi/delimitMate'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" project manager
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'dyng/ctrlsf.vim'
Plug 'terryma/vim-multiple-cursors'

" commenter
Plug 'scrooloose/nerdcommenter'
Plug 'DoxygenToolkit.vim'

" cpp dev
Plug 'derekwyatt/vim-fswitch'
Plug 'Chiel92/vim-autoformat'

" git
Plug 'tpope/vim-fugitive'

" easy movement
Plug 'easymotion/vim-easymotion'

" for indent
Plug 'godlygeek/tabular'

" todo list
Plug 'vitalk/vim-simple-todo'

call plug#end()

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" +++++++++++++++++++++++++++++++++++++++
" +       	     插件配置               +
" +++++++++++++++++++++++++++++++++++++++

source ~/.vim/pluginconfig/airline.vim
source ~/.vim/pluginconfig/tmuxline.vim
source ~/.vim/pluginconfig/nerdtree.vim
source ~/.vim/pluginconfig/doxygentoolkit.vim
source ~/.vim/pluginconfig/ultisnips.vim
source ~/.vim/pluginconfig/easymotion.vim
source ~/.vim/pluginconfig/autoformat.vim
source ~/.vim/pluginconfig/youcompleteme.vim
source ~/.vim/pluginconfig/fugitive.vim
source ~/.vim/pluginconfig/gundo.vim
source ~/.vim/pluginconfig/ack.vim
source ~/.vim/pluginconfig/ctrlp.vim
source ~/.vim/pluginconfig/cscope_maps.vim
source ~/.vim/pluginconfig/ctrlsf.vim
