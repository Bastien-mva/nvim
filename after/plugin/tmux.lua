-- vim.cmd[[noremap <silent> <leader>h :w<CR>\|:<C-U>TmuxNavigateLeft<cr>]]
-- vim.cmd[[noremap <silent> <leader>j :<C-U>TmuxNavigateDown<cr>]]
-- vim.cmd[[noremap <silent> <leader>k :w<CR>\|:<C-U>TmuxNavigateUp<cr>]]
-- vim.cmd[[noremap <silent> <leader>l :w<CR>\|:<C-U>TmuxNavigateRight<cr>]]
vim.cmd[[noremap <silent> <leader>, <CR>\|:<C-U>TmuxNavigatePrevious<cr>]]

vim.api.nvim_set_keymap('n', '<leader>h', ":lua if vim.bo.buftype =='' then vim.api.nvim_exec('w', false) end; vim.api.nvim_exec('TmuxNavigateLeft', false)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>j', ":lua if vim.bo.buftype =='' then vim.api.nvim_exec('w', false) end; vim.api.nvim_exec('TmuxNavigateDown', false)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>k', ":lua if vim.bo.buftype =='' then vim.api.nvim_exec('w', false) end; vim.api.nvim_exec('TmuxNavigateUp', false)<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>l', ":lua if vim.bo.buftype =='' then vim.api.nvim_exec('w', false) end; vim.api.nvim_exec('TmuxNavigateRight', false)<CR>", {noremap = true, silent = true})
