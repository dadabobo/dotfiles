" unite "
"""""""""

call unite#custom#profile('default', 'context', {
    \   'start_insert': 1,
    \   'winheight': 15,
    \   'prompt': ">>> ",
    \   'direction': 'botright',
    \ })

let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.vimrc = {
    \ 'description' : 'vimrc menus for daliy work',
    \}
let g:unite_source_menu_menus.vimrc.command_candidates = [
        \[' + edit vimrc', 'e $MYVIMRC'],
        \[' + source vimrc', 'so $MYVIMRC'],
        \[' + source current', 'so %'],
    \]

" for fuzzy match
call unite#filters#matcher_default#use(['matcher_fuzzy'])

nnoremap <silent> <C-m> :Unite -buffer-name=vimrc menu:vimrc <CR>
