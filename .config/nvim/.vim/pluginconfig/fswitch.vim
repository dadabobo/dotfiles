" vim-fswitch "
"""""""""""""""

au! BufEnter *.cc let b:fswitchdst = 'hpp,h'
au! BufEnter *.h let b:fswitchdst = 'cc,cpp'
