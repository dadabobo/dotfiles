" vim-cpplint "
"""""""""""""""

let g:cpplint_cmd = 'cpplint'
"let g:cpplint_filter = '-whitespace/indent,-build/c++11'

command! Cpplint call Cpplint()
