"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"设置标识符号
let g:ale_sign_error = "✖"
let g:ale_sign_warning = "➠"
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"Linter选项
let g:ale_linters = {
          \ 'sh' : ['shellcheck'],
          \ 'c': ['cpplint'],
          \ 'cpp': ['cpplint'],
          \ 'vim' : ['vint'],
          \ 'html' : ['tidy'],
          \ 'python' : ['flake8'],
          \ 'markdown' : ['mdl'],
          \ 'javascript' : ['eslint'],
          \}
let g:ale_cpp_cpplint_options = '--filter=-build/c++11,-whitespace/indent,-runtime/references,-legal/copyright,-readability/check'
