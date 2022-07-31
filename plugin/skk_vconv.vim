if exists('g:loaded_skk_vconv')
  finish
endif
let g:loaded_skk_vconv = 1

if !exists('g:skk_vconv#no_default_mappings')
  let g:skk_vconv#no_default_mappings = 0
endif

vnoremap <Plug>(skk-vconv:conv) c<Cmd>call skk_vconv#conv()<CR>

if !g:skk_vconv#no_default_mappings
  silent! vmap <unique> <C-j> <Plug>(skk-vconv:conv)
endif

if !exists('g:skk_vconv#enable_henkan_command')
  let g:skk_vconv#enable_henkan_command = "\<C-r>=skkeleton#request('enable', [])\<CR>;"
endif
