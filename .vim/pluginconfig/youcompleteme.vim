" youcompleteme "
"""""""""""""""""

let g:ycm_global_ycm_extra_conf="/home/steven/.vim/pluginconfig/.ycm_extra_conf.py"

set completeopt=longest,menu

"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" 回车选中当前项
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" 不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_confirm_extra_conf=0

" 开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files=1

"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

" 输入第2个字符开始补全
let g:ycm_min_num_of_chars_for_completion=2

" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0

" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1

"在注释输入中也能补全
let g:ycm_complete_in_comments = 1

"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1

"youcompleteme  默认tab  s-tab 和 ultisnips 冲突
let g:ycm_key_list_select_completion = ['C-j']
let g:ycm_key_list_previous_completion = ['C-k']

" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'nerdtree' : 1,
      \}

" 定义跳转
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>

let g:ycm_show_diagnostics_ui = 0
