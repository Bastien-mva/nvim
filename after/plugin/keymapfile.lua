vim.g.mapleader = " "
vim.cmd[[autocmd FileType tex inoremap <buffer> llr \left( \right)<Esc>7hi  ]]
vim.cmd[[autocmd FileType tex inoremap <buffer> èèali \begin{align*} <CR> \end{align*} <Esc><S-o>]]
vim.cmd[[autocmd FileType tex nnoremap <buffer> èèali i\begin{align*} <CR> \end{align*} <Esc><S-o>]]
vim.cmd[[autocmd FileType tex inoremap <buffer> èèeq \begin{equation*} <CR> \end{equation*} <Esc><S-o>]]
vim.cmd[[autocmd FileType tex nnoremap <buffer> èèeq i\begin{equation*} <CR> \end{equation*} <Esc><S-o>]]
vim.cmd[[autocmd FileType tex inoremap <buffer> èèneq \begin{equation} <CR> \end{equation} <Esc><S-o>]]
vim.cmd[[autocmd FileType tex nnoremap <buffer> èèneq i\begin{equation} <CR> \end{equation} <Esc><S-o>]]
