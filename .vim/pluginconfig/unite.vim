" unite "
"""""""""
nnoremap [unite] <Nop>
nmap f [unite]

" key map
" ff - search file
" fr - search file recersively
" fn - new file
" fb - search buffer
" fo - search outline
" fl - search leasted used file

call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <silent> [unite]f :<C-u>Unite
            \ -buffer-name=file_list file/async<cr>
nnoremap <silent> [unite]r :<C-u>Unite
            \ -buffer-name=file_list file_rec/async<cr>
nnoremap <silent> [unite]n :<C-u>Unite
            \ -buffer-name=filenew file/new<cr>
nnoremap <silent> [unite]b :<C-u>Unite
            \ -buffer-name=bufferlist buffer<cr>
nnoremap <silent> [unite]m :<C-u>Unite
            \ -buffer-name=mru file_mru<cr>
nnoremap <silent> [unite]o :<C-u>Unite
            \ -buffer-name=outline outline<cr>
nnoremap <silent> [unite]l :<C-u>Unite
            \ -buffer-name=search line:forward<cr>
nnoremap <silent> [unite]s :<C-u>UniteWithCursorWord grep:.<CR>

call unite#custom#profile('default', 'context', {
    \   'start_insert': 1,
    \   'winheight': 15,
    \   'prompt': "> ",
    \   'direction': 'botright',
    \ })


let g:unite_source_menu_menus = {}
let g:unite_source_menu_menus.main = {
    \ 'description' : 'main menus for daliy work',
    \}
let g:unite_source_menu_menus.main.command_candidates = [
        \[' + edit vimrc', 'e $MYVIMRC'],
        \[' + source vimrc', 'so $MYVIMRC'],
    \]
nnoremap <silent>[unite]m :Unite -buffer-name=mainmenu menu:main <CR>

let g:unite_source_menu_menus.git = {
    \ 'description' : '            gestionar repositorios git
        \                            [espacio]g',
    \}
let g:unite_source_menu_menus.git.command_candidates = [
    \[' + git status       (Fugitive)                                ,gs',
        \'Gstatus'],
    \[' + git diff         (Fugitive)                                ,gd',
        \'Gdiff'],
    \[' + git commit       (Fugitive)                                ,gc',
        \'Gcommit'],
    \[' + git log          (Fugitive)                                ,gl',
        \'Glog'],
    \[' + git blame        (Fugitive)                                ,gb',
        \'Gblame'],
    \[' + git stage        (Fugitive)                                ,gw',
        \'Gwrite'],
    \[' + git checkout     (Fugitive)                                ,go',
        \'Gread'],
    \[' + git rm           (Fugitive)                                ,gr',
        \'Gremove'],
    \[' + git mv           (Fugitive)                                ,gm',
        \'exe "Gmove " input("destino: ")'],
    \[' + git push         (Fugitive, salida por buffer)             ,gp',
        \'Git! push'],
    \[' + git pull         (Fugitive, salida por buffer)             ,gP',
        \'Git! pull'],
    \[' + git prompt       (Fugitive, salida por buffer)             ,gi',
        \'exe "Git! " input("comando git: ")'],
    \[' + git cd           (Fugitive)',
        \'Gcd'],
    \]
nnoremap <silent>[unite]g :Unite menu:git<CR>
