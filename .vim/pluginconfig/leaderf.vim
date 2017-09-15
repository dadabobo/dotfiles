" leaderf "
let g:Lf_StlSeparator = { 'left': '', 'right': '' }
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_WildIgnore = {
            \ 'dir': ['.svn','.git','.hg', 'boost', 'contrib', 'build', 'doc', 'third_party'],
            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
            \}
let g:Lf_WindowHeight = 0.30
let g:Lf_DefaultExternalTool = "ag"

nnoremap <Leader>m :LeaderfMru<CR>
nnoremap <Leader>v :LeaderfFunction<CR>
nnoremap <Leader>l :LeaderfLine<CR>
nnoremap <Leader>s :LeaderfSelf<CR>
nnoremap <Leader><Leader> :LeaderfHistoryCmd<CR>
