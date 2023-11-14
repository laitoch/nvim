autocmd FileType python set makeprg=pdm\ run\ python\ %
autocmd FileType sh set makeprg=bash\ %

function! s:Make()
  let efm  = '%+GTraceback%.%#,'
  let efm .= '%E  File "%f"\, line %l\,%m%\C,'
  let efm .= '%E  File "%f"\, line %l%\C,'
  let efm .= '%C%p^,'
  let efm .= '%+C    %.%#,'
  let efm .= '%+C  %.%#,'
  let efm .= '%Z%\S%\&%m,'
  let efm .= '%-G%.%#'
  let &efm = efm

    cd %:p:h
    make
    copen
endfunction

command! Make call s:Make()
