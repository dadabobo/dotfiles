" CtrlP "
"""""""""

let g:ctrlp_map = '<Leader>p'

"nnoremap <silent> <Leader>p :CtrlP<CR>
nnoremap <silent> <Leader>m :CtrlPMRU<CR>
nnoremap <silent> <Leader>b :CtrlPBuffer<CR>
nnoremap <silent> <Leader>f :CtrlPFunky<Cr>
nnoremap <silent> <Leader>l :CtrlPLine<Cr>
nnoremap <silent> <Leader>i :CtrlPHeader<CR>
nnoremap <silent> <Leader>e :CtrlPEHeader<CR>

let g:ctrlp_funky_matchtype = 'path'

let g:ctrlp_extensions = ['line', 'header']

" use ag to list file
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
  \ --ignore .git
  \ --ignore .svn
  \ --ignore .hg
  \ --ignore .DS_Store
  \ --ignore "**/*.pyc"
  \ -g ""'

" set ctrlp header list path
"let g:ctrlp_header_path = {
  "\ 'c'   : [
  "\		'/home/guorongfei/.vim/pluginconfig/headerlist/stdc.txt',
  "\		'/home/guorongfei/.vim/pluginconfig/headerlist/extent.txt',
  "\         ],
  "\ 'cpp' : ['/home/guorongfei/.vim/pluginconfig/headerlist/stdcpp.txt'],
  "\ }
