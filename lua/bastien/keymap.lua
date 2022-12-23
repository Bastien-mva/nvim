vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- deoplete auto completion for latex 
-- vim.cmd[[let g:deoplete#enable_at_startup = 1]]

function map(mode, lhs, rhs, opts)
local options = { noremap = true }
if opts then
options = vim.tbl_extend("force", options, opts)
end
vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- can remove and copy lines adding a leader in order to paste with ctrl v 
-- map("n", "<leader>yy",' "+yy')
-- map("n", "<leader>dd",' "+dd')
-- map("i","<C-v>", "<C-r>+")


map("n","<leader>f", ":MaximizerToggle!<CR>")




vim.g.tmux_navigator_no_mappings = 1
vim.cmd[[noremap <silent> <leader>h :w<CR>\|:<C-U>TmuxNavigateLeft<cr>]]
vim.cmd[[noremap <silent> <leader>j :w<CR>\|:<C-U>TmuxNavigateDown<cr>]]
vim.cmd[[noremap <silent> <leader>k :w<CR>\|:<C-U>TmuxNavigateUp<cr>]]
vim.cmd[[noremap <silent> <leader>l :w<CR>\|:<C-U>TmuxNavigateRight<cr>]]
vim.cmd[[noremap <silent> <leader>, <CR>\|:<C-U>TmuxNavigatePrevious<cr>]]



map("n", "<C-j>", "10j")
map("n", "<C-h>", "10h")
map("n", "<C-l>", "10l")
map("n", "<C-k>", "10k")

-- simple grep to find words in files 
vim.keymap.set('n', '<leader>tp', function() 
    builtin.grep_string({search = vim.fn.input("Grep > ")});
end
) 



