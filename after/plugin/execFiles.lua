vim.cmd[[autocmd FileType python nnoremap <buffer> <F8> :w \| sp \| hor resize 10 \| term python3 % <CR>]]
vim.cmd[[autocmd FileType python nnoremap <buffer> <F1> :w <CR> \| :!black % <CR>]]
vim.cmd[[autocmd FileType python inoremap <buffer> <F8> <Esc> :w \| sp \| hor resize 10 \| term python3 % <CR>]]
vim.cmd[[autocmd FileType r nnoremap <buffer> <F8> :w \| sp \| hor resize 10 \| term r % <CR>]]
vim.cmd[[autocmd FileType r inoremap <buffer> <F8> <Esc> :w sp \| hor resize 10 \| term r % <CR>]]
vim.cmd[[autocmd FileType tex nnoremap <buffer> <F8> :w  <CR> :VimtexView <CR> ]]
vim.cmd[[autocmd FileType html nnoremap <buffer> <F8> :w  <CR>  ]]
vim.cmd[[autocmd FileType css nnoremap <buffer> <F8> :w  <CR>  ]]
vim.cmd[[autocmd FileType sh nnoremap <buffer> <F8> :w  \|sp \| hor resize 10 \| term ./% <CR>]]
vim.cmd[[autocmd FileType sh nnoremap <buffer> <F9> :w  \|sp \| hor resize 10 \| term ./% ]]
vim.cmd[[autocmd FileType rst nnoremap <buffer> <F8> :w  \|:!make -C .. html  <CR>]]
vim.cmd[[autocmd FileType python nnoremap <buffer> <F9> :w  \|:!make -C ~/These/pyPLNmodels/docs html  <CR>]]
vim.cmd[[autocmd FileType python nnoremap <buffer> <F5> :w  \| sp \| hor resize 30 \| term pytest  <CR>]]
-- vim.cmd[[autocmd FileType python nnoremap <buffer> <F4> :w  \| sp \| hor resize 30 \| term pytest % <CR>]]
-- vim.cmd[[autocmd FileType cpp nnoremap <buffer> <F8> :w \| sp \| hor resize 10 \| term  clang++ -I /home/bastien/miniconda3/pkgs/libstdcxx-devel_linux-64-11.3.0-h210ce93_19/x86_64-conda-linux-gnu/include/c++/11.3.0  -o %  \|  <CR>]]
vim.cmd[[autocmd FileType cpp nnoremap <buffer> <F6> :w \| sp \| hor resize 10 \|term  clang++ -I /home/bastien/miniconda3/pkgs/libstdcxx-devel_linux-64-11.3.0-h210ce93_19/x86_64-conda-linux-gnu/include/c++/11.3.0  % <CR> ]]
vim.cmd[[autocmd FileType cpp nnoremap <buffer> <F7> :w \| sp \| hor resize 10 \|term  clang++ -I /home/bastien/miniconda3/pkgs/libstdcxx-devel_linux-64-11.3.0-h210ce93_19/x86_64-conda-linux-gnu/include/c++/11.3.0  % <CR> ZZ <CR> ]]
vim.cmd[[autocmd FileType cpp nnoremap <buffer> <F8> :sp \| hor resize 10 \| term ./a.out <CR>]]
vim.cmd[[autocmd FileType cpp nnoremap <buffer> <F9> :sp \| hor resize 10 \| term cmake -G "Unix Makefiles" .<CR>:! make <CR>]]
vim.cmd[[autocmd FileType markdown nnoremap <buffer> <F8> :w \| :!markdown README.md > index.html  <CR>]]

