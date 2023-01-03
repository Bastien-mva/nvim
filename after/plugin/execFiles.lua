vim.cmd[[autocmd FileType python nnoremap <buffer> <F8> :w \| Dispatch python  % <CR>]]
vim.cmd[[autocmd FileType r nnoremap <buffer> <F8> :w \| Dispatch r  % <CR>]]
vim.cmd[[autocmd FileType tex nnoremap <buffer> <F8> :w  <CR> :VimtexView <CR> ]]
vim.cmd[[autocmd FileType html nnoremap <buffer> <F8> :w  <CR>  ]]

