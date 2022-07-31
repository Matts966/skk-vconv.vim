function! skk_vconv#conv() abort
  call feedkeys('c')
  call feedkeys(g:skk_enable_henkan_command . system('kakasi -K a -H a -J a -E a', getreg('*')), 't')
endfunction
