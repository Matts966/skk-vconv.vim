function! skk_vconv#conv() abort
  if !executable('kakasi')
    echom 'Please install kakasi'
    return
  endif
  let l:roman = system('kakasi -K a -H a -J a -E a', getreg('*'))
  if roman =~ 'n'
    let l:roman = roman . 'n'
  endif
  call feedkeys(g:skk_enable_henkan_command . roman, 't')
endfunction
