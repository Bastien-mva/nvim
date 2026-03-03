local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>tf', builtin.find_files, {})
vim.keymap.set('n', '<leader>tg', builtin.git_files, {})
vim.keymap.set('n', '<leader>tt', builtin.live_grep, {})
vim.keymap.set('n', '<leader>tb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ts', builtin.grep_string, {})
vim.keymap.set("n", "<leader>tf", function()
    require("telescope").extensions.frecency.frecency({ workspace = "CWD", default_text = "", db_safe_mode=false})
end)


