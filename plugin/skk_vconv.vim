if exists('g:loaded_skk_vconv')
  finish
endif
let g:loaded_skk_vcon = 1

vnoremap <expr> <Plug>(skk-vconv:conv) skk_vconv#conv()

if !g:skk_vconv#no_default_mappings
  silent! vmap <unique> <C-j> <Plug>(skk_vconv:conv)
endif

if !exists('g:skk_enable_henkan_command')
  let g:skk_enable_henkan_command = "\<C-r>=skkeleton#request('enable', [])\<CR>;"
endif
