function map(mode, lhs, rhs, opts)
local options = { noremap = true }
if opts then
options = vim.tbl_extend("force", options, opts)
end
vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " " 
map("n","<leader>f", ":MaximizerToggle!<CR>")




vim.g.tmux_navigator_no_mappings = 1
vim.cmd[[noremap <silent> <leader>h :w<CR>\|:<C-U>TmuxNavigateLeft<cr>]]
vim.cmd[[noremap <silent> <leader>j :w<CR>\|:<C-U>TmuxNavigateDown<cr>]]
vim.cmd[[noremap <silent> <leader>k :w<CR>\|:<C-U>TmuxNavigateUp<cr>]]
vim.cmd[[noremap <silent> <leader>l :w<CR>\|:<C-U>TmuxNavigateRight<cr>]]
vim.cmd[[noremap <silent> <leader>, <CR>\|:<C-U>TmuxNavigatePrevious<cr>]]
