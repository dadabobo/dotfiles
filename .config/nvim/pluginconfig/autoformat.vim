"let g:formatdef_cfmter = '"astyle"'
"let g:formatters_c = ['cfmter']
"let g:formatters_cpp = ['cfmter']

noremap <Leader>a ix<ESC>x:undojoin \| Autoformat<CR>
"autocmd BufWrite *.cpp :Autoformat
"autocmd BufWrite *.c :Autoformat
"autocmd BufWrite *.h :Autoformat
"nnoremap <C-L> :Autoformat<CR>
