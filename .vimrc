" ++++++++++++++++++++++++++++++++++++++++
" +         name: .vimrc                 +
" +         author: steven guo           +
" +         last update: 2016-03-20      +
" ++++++++++++++++++++++++++++++++++++++++


" ++++++++++++++++++++++++++++++++++++++++
" +             基础选项配置             +
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
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal tabstop=4

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

" 删除设置
set backspace=eol,start,indent

" 设置隐藏字符, 通过 set list 显示
set lcs=tab:>-

" vim 类型文件设置折叠方式为 marker
autocmd FileType vim set foldmethod=marker

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

nnoremap <silent> <C-c> :<C-u>nohlsearch<CR>

" 绑定 jk <Esc>，这样就不用按角落里面的 <Esc>
inoremap jk <Esc>

" 绑定 space 到 : 按键
noremap <space> :

"绑定大写的 HL 为行首和行尾的快捷键
noremap H ^
noremap L $

" 交换 ' 和 ` 的功能
nnoremap ' `
nnoremap ` '

" 使用超级用户权限编辑这个文件
cmap w!! w !sudo tee >/dev/null %

" 修改leader键
let mapleader = ';'
noremap , ;
noremap \ ,

" 使用 %% 扩展当前文件的路径
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" 使得 & 命令能够重复上一次的命令，包括 flag
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" 输入模式下快速的移动光标
"inoremap <C-k> <Up>
"inoremap <C-j> <Down>
"inoremap <C-h> <Left>
"inoremap <C-l> <Right>
"inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <c-u> <esc>bgUwea

" 命令行模式 Ctrl-j 下一条命令，Ctrl-k 上一条命令
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

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
Plug 'tomasr/molokai'
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

" commenter
Plug 'scrooloose/nerdcommenter'
Plug 'DoxygenToolkit.vim'

" cpp dev
Plug 'derekwyatt/vim-fswitch', {'for': ['cpp', 'c']}
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt', {'for': ['python', 'c', 'cpp']}
Plug 'google/vim-glaive'
Plug 'octol/vim-cpp-enhanced-highlight'

" python
Plug 'nvie/vim-flake8', {'for': 'python'}

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" for indent
Plug 'godlygeek/tabular'

" todo list
Plug 'vitalk/vim-simple-todo', {'for': 'markdown'}

" text-object
Plug 'kana/vim-textobj-user' | Plug 'kana/vim-textobj-entire'
Plug 'lucapette/vim-textobj-underscore', {'for': ['python', 'cpp', 'c']}
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-indent', {'for': 'python'}

" other
Plug 'tpope/vim-unimpaired'
Plug 'triglav/vim-visual-increment'
Plug 'KabbAmine/zeavim.vim'
Plug '~/Workspace/ctrlp-header'
"Plug 'zhaohuaxishi/ctrlp-header'

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
source ~/.vim/pluginconfig/tmux-navigator.vim
