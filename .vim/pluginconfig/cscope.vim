" cscope.vim "
""""""""""""""

nnoremap fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap fl :call ToggleLocationList()<CR>

" s: Find this C symbol
nnoremap  fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  fi :call CscopeFind('i', expand('<cword>'))<CR>
