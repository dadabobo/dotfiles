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

" Ctrl-Space 需要这个选项
set hidden

" 默认开启语法高亮
syntax on

" tabs
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

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

"nnoremap <F1> :FormatCode<cr>
"nnoremap <F2> :set number!<cr>
"nnoremap <F3> :set paste!<cr>
"nnoremap <F4> :set hlsearch!<cr>

"nnoremap <F9> :TagbarToggle<cr>
"nnoremap <F10> :NERDTreeToggle<cr>

" insert current time
"nnoremap <F12> "=strftime("%F")<CR>gP
"inoremap <F12> <C-R>=strftime("%F")<CR>

" 绑定 jk <Esc>，这样就不用按角落里面的 <Esc>
"inoremap jk <Esc>
inoremap <C-l> <Esc>

" 绑定 space 到 : 按键
noremap <space> :

"绑定大写的 HL 为行首和行尾的快捷键
noremap H ^
noremap L $

" 交换 ' 和 ` 的功能
nnoremap ' `
nnoremap ` '

" 使用更合理的大小写切换
"nnoremap gu gU
"nnoremap gl gu

" 使用超级用户权限编辑这个文件
cmap w!! w !sudo tee >/dev/null %

" 修改leader键
let mapleader = ';'
let maplocalleader = ','
noremap + ;
noremap - ,

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
"inoremap <C-e> <End>

" 命令行模式 Ctrl-j 下一条命令，Ctrl-k 上一条命令
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" 修改 vimrc 的快捷方式
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <C-p> "+gP

if has("autocmd")
    autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
endif
