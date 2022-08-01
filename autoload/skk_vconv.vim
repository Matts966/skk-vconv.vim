function! skk_vconv#conv() abort
  if !executable('kakasi')
    echomsg 'Please install pykakasi by pip3'
    return
  endif

  let l:roman = system('kakasi -K a -H a -J a -E a', getreg('"'))
  if l:roman =~# 'n$'
    let l:roman = l:roman . 'n'
  endif

  call feedkeys(g:skk_vconv#enable_henkan_command . l:roman, 't')
endfunction
