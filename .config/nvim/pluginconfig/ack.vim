" ack.vim "
"""""""""""

" use ag as the search tool
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
