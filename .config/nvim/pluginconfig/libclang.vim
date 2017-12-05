let g:textobj_clang_more_mappings = 1

let g:clang_extent_selector_use_default_mapping = 0

" Map to <Leader><Leader>
augroup clang-extent-selector-mappings
    autocmd!
    autocmd FileType c,cpp map <buffer><C-m> <Plug>(clang-select-next-extent)
augroup END
