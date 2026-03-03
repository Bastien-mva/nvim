require('bastien.packer')
require('bastien.set')
require('bastien.cmp')
require('bastien.keymap')
require'lspconfig'.pylsp.setup{}


-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     -- Execute the command
--     vim.cmd("FrecencyValidate")

--     -- Feed <Enter> to accept the prompt
--     -- Use `nvim_feedkeys()` to simulate a key press
--     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("q", true, false, true), "n", false)
--     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("q", true, false, true), "n", false)
--     vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("q", true, false, true), "n", false)
--   end,
-- })
