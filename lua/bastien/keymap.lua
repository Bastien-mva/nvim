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
map("n", "<leader>yy",' "+yy')
map("n", "<leader>dd",' "+dd')
map("i","<C-v>", "<C-r>+")
-- simple grep to find words in files 
vim.keymap.set('n', '<leader>tp', function() 
    builtin.grep_string({search = vim.fn.input("Grep > ")});
end
) 


map("n", "<C-j>", "10j")
map("n", "<C-h>", "10h")
map("n", "<C-l>", "10l")
map("n", "<C-k>", "10k")

