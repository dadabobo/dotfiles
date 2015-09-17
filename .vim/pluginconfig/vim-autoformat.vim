let g:formatdef_cfmter = '"astyle --mode=c -A20s4xl -NxWm0fpHU -k1W1jc"'
let g:formatters_c = ['cfmter']
let g:formatters_cpp = ['cfmter']

noremap <Leader>f :Autoformat<CR>

