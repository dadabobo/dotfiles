" vim-easytags "
""""""""""""""""

" 使用异步的方式生成 TAG 文件防止出现卡顿
let g:easytags_async = 1

" 为每一个工程单独包含 TAG 文件
set tags=./tags;/
let g:easytags_dynamic_files = 1

" 包含成员函数
let g:easytags_include_members = 1
