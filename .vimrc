" ++++++++++++++++++++++++++++++++++++++++
" +         name: .vimrc                 +
" +         author: steven guo           +
" +         last update: 2016-03-20      +
" ++++++++++++++++++++++++++++++++++++++++


" ++++++++++++++++++++++++++++++++++++++++
" +   	        基础选项配置             +
" ++++++++++++++++++++++++++++++++++++++++

" 非兼容模式
set nocompatible

" 默认不显示行号
set number

" 搜索设置
set ignorecase
set incsearch
set hlsearch

" 默认开启语法高亮
syntax on

" tabs
setlocal expandtab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

" 缩进设置，设置基于文件的类型的缩进
set autoindent
set cino=(0,W4
filetype plugin indent on

" 改变超过 80 个字符之后的区域，这样就可以起到提示作用
set colorcolumn=80
set textwidth=79
set fo+=mB
set wrap

" 编码设置
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,GB2312,big5

" 高亮当前行
set cursorline

" 智能补全命令行
set wildmenu
set wildmode=full

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
"set scrolloff=10

" vimrc文件修改之后自动加载
"autocmd! bufwritepost _vimrc source %
"autocmd! bufwritepost .vimrc source %

" ++++++++++++++++++++++++++++++++++++++++
" +             快捷键配置               +
" ++++++++++++++++++++++++++++++++++++++++

nnoremap <F1> :FormatCode<cr>
nnoremap <F2> :set number!<cr>
nnoremap <F3> :set paste!<cr>
nnoremap <F4> :set hlsearch!<cr>

nnoremap <F9> :TagbarToggle<cr>
nnoremap <F10> :NERDTreeToggle<cr>

" insert current time
nnoremap <F12> "=strftime("%F")<CR>gP
inoremap <F12> <C-R>=strftime("%F")<CR>

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" 直接使用 yo 命令就可以了
"au InsertLeave * set nopaste

" 绑定 jk <Esc>，这样就不用按角落里面的 <Esc>
inoremap jk <Esc>
" inoremap <C-l> <Esc>

" 绑定 space 到 : 按键
noremap <space> :

" 绑定大写的 HL 为行首和行尾的快捷键
noremap H ^
noremap L $

" 重新绑定大小写转换功能的快捷键
"nnoremap gu gU
"nnoremap gl gu

" 调换 a 和 A 的功能
"nnoremap a A
"nnoremap A a

nnoremap ' `
nnoremap ` '

" 物理行上直接切换
"nnoremap k gk
"nnoremap gk k
"nnoremap j gj
"nnoremap gj j

" 输入模式下快速的移动光标
"inoremap <C-k> <Up>
"inoremap <C-j> <Down>
"inoremap <C-h> <Left>
"inoremap <C-l> <Right>
"inoremap <C-a> <Home>
"inoremap <C-e> <End>

" 命令行模式 Ctrl-j 下一条命令，Ctrl-k 上一条命令
"cnoremap <C-j> <t_kd>
"cnoremap <C-k> <t_ku>
"cnoremap <C-a> <Home>
"cnoremap <C-e> <End>

" 使用超级用户权限编辑这个文件
cmap w!! w !sudo tee >/dev/null %

" 修改leader键
let mapleader = ';'
noremap , ;
noremap \ ,

" 使用方向键切换 buffer
"noremap <C-b>n :bn<CR>
"noremap <C-b>p :bp<CR>
"noremap <C-b>d :bdelete<CR>

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" ++++++++++++++++++++++++++++++++++++++++
" +             常用插件安装             +
" ++++++++++++++++++++++++++++++++++++++++

" enable matchit
runtime macro/matchit.vim

call plug#begin('~/.vim/plugged')

" themes
Plug 'flazz/vim-colorschemes'
Plug 'altercation/vim-colors-solarized'
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
Plug 'kien/ctrlp.vim' | Plug 'tacahiroy/ctrlp-funky'
Plug 'dyng/ctrlsf.vim'
Plug 'terryma/vim-multiple-cursors'

" commenter
Plug 'scrooloose/nerdcommenter'
Plug 'DoxygenToolkit.vim'

" cpp dev
Plug 'derekwyatt/vim-fswitch', {'for': ['cpp', 'c']}
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt', {'for': ['python', 'c', 'cpp']}
Plug 'google/vim-glaive'
Plug 'Mizuchi/STL-Syntax', {'for': 'cpp'}

" python
Plug 'nvie/vim-flake8', {'for': 'python'}

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" for indent
Plug 'godlygeek/tabular'

" markdown
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

" todo list
Plug 'vitalk/vim-simple-todo', {'for': 'markdown'}

" text-object
Plug 'kana/vim-textobj-user' | Plug 'kana/vim-textobj-entire'
Plug 'lucapette/vim-textobj-underscore', {'for': ['python', 'cpp', 'c']}
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-indent', {'for': 'python'}

" other
Plug 'tpope/vim-unimpaired'

" Add plugins to &runtimepath
call plug#end()

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" +++++++++++++++++++++++++++++++++++++++
" +		 插件配置               +
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
source ~/.vim/pluginconfig/gundo.vim
source ~/.vim/pluginconfig/ack.vim
source ~/.vim/pluginconfig/ctrlp.vim
source ~/.vim/pluginconfig/cscope_maps.vim
source ~/.vim/pluginconfig/ctrlsf.vim
source ~/.vim/pluginconfig/nerdcommenter.vim
source ~/.vim/pluginconfig/flake8.vim
source ~/.vim/pluginconfig/visual-star.vim
