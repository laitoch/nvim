" http://vim.wikia.com/wiki/Increasing_or_decreasing_numbers
function! AddSubtract(char, back)
  let pattern = &nrformats =~ 'alpha' ? '[[:alpha:][:digit:]]' : '[[:digit:]]'
  call search(pattern, 'cw' . a:back)
  execute 'normal! ' . v:count1 . a:char
  silent! call repeat#set(":\<C-u>call AddSubtract('" .a:char. "', '" .a:back. "')\<CR>")
endfunction
nnoremap <silent>  <C-a> :<C-u>call AddSubtract("\<C-a>", '')<CR>
nnoremap <silent> g<C-a> :<C-u>call AddSubtract("\<C-a>", 'b')<CR>
nnoremap <silent>  <C-x> :<C-u>call AddSubtract("\<C-x>", '')<CR>
nnoremap <silent> g<C-x> :<C-u>call AddSubtract("\<C-x>", 'b')<CR>
