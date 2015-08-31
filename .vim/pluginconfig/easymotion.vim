" easymotion "
""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings

nmap s <Plug>(easymotion-s)
nmap t <Plug>(easymotion-bd-t)
omap t <Plug>(easymotion-t)
let g:EasyMotion_use_upper = 1
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

nmap / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
