-- vim.keymap.set("n", "<F2>", "x $ p")
vim.g.mapleader = " "
vim.cmd[[xnoremap i$ :<C-u> normal! T$vt$<CR>]]
vim.cmd[[onoremap i$ :normal vi$<CR>]]
vim.cmd[[xnoremap a$ :<C-u> normal!F$vf$<CR>]]
vim.cmd[[onoremap a$ :normal va$<CR>]]

-- deoplete auto completion for latex
function map(mode, lhs, rhs, opts)
local options = { noremap = true }
if opts then
options = vim.tbl_extend("force", options, opts)
end
vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- can remove and copy lines adding a leader in order to paste with ctrl v
map("n", "<leader>y",  "\"+y")
map("v", "<leader>y",  "\"+y")
map("n", "<leader>y",  "\"+Y")
map("i","<C-v>", "<C-r>+")

map("n","<leader>f", ":MaximizerToggle!<CR>")

vim.g.tmux_navigator_no_mappings = 1

map("i","jk", "<Esc>")
map("n", "<C-j>", "10j")
map("n", "<C-h>", "10h")
map("n", "<C-l>", "10l")
map("n", "<C-k>", "10k")

-- simple grep to find words in files
vim.keymap.set('n', '<leader>tp', function()
    builtin.grep_string({search = vim.fn.input("Grep > ")});
end
)
vim.keymap.set("n", "G", "G$")
vim.keymap.set("v", "G", "G$")
vim.keymap.set("n", "gg", "gg0")
vim.keymap.set("v", "gg", "gg0")
vim.keymap.set("n", ",", "$")
vim.keymap.set("n", "d,", "d$")
vim.keymap.set("n", "c,", "c$")
vim.keymap.set("n", "c,", "c$")
vim.keymap.set("n", "y,", "y$")
vim.keymap.set("x", ",", "$")
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.g.tmux_resizer_no_mappings = 1

-- run black on quit, only on python files
-- vim.cmd[[autocmd FileType python          nnoremap ZZ  :w <CR> :! black % <CR>  :exit <CR> ]]
vim.keymap.set("n", "²h", ":TmuxResizeLeft<CR>")
vim.keymap.set("n", "²l", ":TmuxResizeRigh<CR>")
vim.keymap.set("n", "²k", ":TmuxResizeUp<CR>")
vim.keymap.set("n", "²j", ":TmuxResizeDown<CR>")
--  x $pp

vim.keymap.set("n", "<F6>", ":vs ~/.local/share/nvim/site/pack/packer/start/vim-snippets/snippets/ <CR>")

vim.keymap.set("n", "<leader>²", ":%s/")
vim.keymap.set("n", "<leader>*", "yiw :%s/<C-r>0/")
vim.keymap.set("n", "<leader><leader>²", ":argdo %s/")
vim.keymap.set("n", "<leader><leader>*", "yiw :argdo %s/<C-r>0/")

vim.cmd[[autocmd BufWritePre * :%s/\s\+$//e]]

vim.keymap.set("n", "<leader>_" ,":!")
