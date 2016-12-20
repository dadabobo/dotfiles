" easymotion "
""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-bd-f)

" Move to line
map <Leader>j <Plug>(easymotion-bd-jk)
nmap <Leader>j <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
