vim.cmd[[autocmd FileType python nnoremap <buffer> <F8> :w \| Dispatch python  % <CR>]]
vim.cmd[[autocmd FileType python inoremap <buffer> <F8> :w \| Dispatch python  % <CR>]]

vim.g.mapleader = " "





function map(mode, lhs, rhs, opts)
        local options = { noremap = true }
            if opts then
                        options = vim.tbl_extend("force", options, opts)
                            end
                                vim.api.nvim_set_keymap(mode, lhs, rhs, options)
                            end

map("n","<leader>f", ":MaximizerToggle!<CR>")
-- kassio/neoterm 
map("n", "<c-q>", ":vs  | :Ttoggle<CR>")
map("i", "<c-q>", "<Esc>| :vs | :Ttoggle<CR>")
map("t", "ZZ", "<c-\\><c-n>:Ttoggle<CR>")
-- neoformat 
map("n", "<leader>F", ":Neoformat prettier<CR>")
-- junegunn/fzf.vim  
map("n", "<leader><space>", ":GFiles<CR>")
-- jump to definition for nvim autocompletion 
-- map("n", "gd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>")

vim.g.tmux_navigator_no_mappings = 1
vim.cmd[[noremap <silent> <leader>h :w<CR>\|:<C-U>TmuxNavigateLeft<cr>]]
vim.cmd[[noremap <silent> <leader>j :w<CR>\|:<C-U>TmuxNavigateDown<cr>]]
vim.cmd[[noremap <silent> <leader>k :w<CR>\|:<C-U>TmuxNavigateUp<cr>]]
vim.cmd[[noremap <silent> <leader>l :w<CR>\|:<C-U>TmuxNavigateRight<cr>]]
vim.cmd[[noremap <silent> <leader>, <CR>\|:<C-U>TmuxNavigatePrevious<cr>]]



-- anyjump 
vim.g.any_jump_disable_default_keybindings = 1
map("n","gdp", ":AnyJump<CR>")
