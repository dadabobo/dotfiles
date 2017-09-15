noremap <Tab> :WSNext<CR>
noremap <S-Tab> :WSPrev<CR>
noremap <Leader><Tab> :WSClose<CR>
noremap <Leader><S-Tab> :WSClose!<CR>
noremap <C-t> :WSTabNew<CR>

cabbrev bonly WSBufOnly

" vim-workspace Configuration {{{

let g:workspace_powerline_separators = 1
let g:workspace_tab_icon = "\uf00a"
let g:workspace_left_trunc_icon = "\uf0a8"
let g:workspace_right_trunc_icon = "\uf0a9"

fun! g:WorkspaceSetCustomColors()

  hi! WorkspaceBufferCurrent ctermfg=235 ctermbg=246 guifg=#282828 guibg=#a89984
  hi! WorkspaceBufferActive  ctermfg=246 ctermbg=239 guifg=#a89984 guibg=#504945
  hi! WorkspaceBufferHidden  ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
  hi! WorkspaceBufferTrunc   ctermfg=243 ctermbg=237 guifg=#7c6f64 guibg=#3c3836
  hi! WorkspaceTabCurrent    ctermbg=214 ctermfg=236 guibg=#fabd2f guifg=#32302f
  hi! WorkspaceTabHidden     ctermfg=214 ctermbg=237 guifg=#fabd2f guibg=#3c3836
  hi! WorkspaceFill          ctermfg=237 ctermbg=237 guifg=#3c3836 guibg=#3c3836

endfun

" }}}
