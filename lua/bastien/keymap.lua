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

function remap(mode, lhs, rhs, opts)
local options = { noremap = false }
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
-- copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "²", 'copilot#Accept("<CR>")', { silent = true, expr = true })
-- vim.keymap.set("n","<leader>cc",":CopilotChatOpen<CR>")
vim.keymap.set("n", "<leader>cc", ":CopilotChatOpen<CR>:wincmd L<CR>")
-- vim.keymap.set("n", "<leader>cc", ":CopilotChatOpen<CR>")
vim.keymap.set("n","<leader><leader>c",":CopilotChat")
vim.api.nvim_set_keymap('v', ':syno', ':<C-u>CopilotChatSynonym<CR>', {silent = true})
vim.api.nvim_set_keymap('v', ':fre', ':<C-u>CopilotChatFrench<CR>', {silent = true})
vim.api.nvim_set_keymap('v', ':acti', ':<C-u>CopilotChatActive<CR>', {silent = true})
vim.api.nvim_set_keymap('v', ':refo', ':<C-u>CopilotChatReformulate<CR>', {silent = true})
vim.api.nvim_set_keymap('v', ':repa', ':<C-u>CopilotChatReformulatepackage<CR>', {silent = true})
vim.api.nvim_set_keymap('v', ':rewi', ':<C-u>CopilotChatRewrite<CR>', {silent = true})
vim.api.nvim_set_keymap('v', ':faut', ':<C-u>CopilotChatFaute<CR>', {silent = true})
vim.api.nvim_set_keymap('v', ':trans', ':<C-u>CopilotChatTranslate<CR>', {silent = true})

map("i","jk", "<Esc>")
-- map("i","llr", "\\left( \\right)<Esc>7hi")
map("n", "<C-j>", "10j")
map("n", "<C-h>", "10h")
map("n", "<C-l>", "10l")
map("n", "<C-k>", "10k")


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
-- vim.cmd[[autocmd FileType python    nnoremap ZZ  :w <CR> :! black % <CR>  :exit <CR> ]]
vim.keymap.set("n", "²h", ":TmuxResizeLeft<CR>")
vim.keymap.set("n", "²l", ":TmuxResizeRigh<CR>")
vim.keymap.set("n", "²k", ":TmuxResizeUp<CR>")
vim.keymap.set("n", "²j", ":TmuxResizeDown<CR>")
--  x $pp


vim.keymap.set("n", "<leader>²", ":%s/")
vim.keymap.set("n", "<leader>*", "yiw :%s/<C-r>0/")
vim.keymap.set("n", "<leader><leader>²", ":argdo %s/")
vim.keymap.set("n", "<leader><leader>*", "yiw :argdo %s/<C-r>0/")
vim.keymap.set("n", "<leader>.*", ":.s/")
vim.keymap.set("n", "<leader>..*", "yiw :.s/<C-r>0/")
vim.keymap.set("n", "<leader>.e", "yiw :.,$s/")
vim.keymap.set("n", "<leader>..e", "yiw :.,$s/<C-r>0/")
vim.keymap.set("n", "<leader>b", ":w <CR> :!black % <CR>")

vim.cmd[[autocmd BufWritePre * :%s/\s\+$//e]]

vim.keymap.set("n", "<leader>_" ,":!")
vim.keymap.set("n", ";","/def ")
-- opens up a terminal
vim.keymap.set("n","<leader><leader>k" ,":sp | hor resize 10 | term<CR> A")
vim.keymap.set("n","<leader><leader>i" ,":sp | hor resize 10 | term ipython <CR> A")
vim.keymap.set("n","<leader><leader>r" ,":sp | hor resize 10 | term R <CR> A")
-- vim.keymap.set("n", "<leader><leader>@", "lv3ldt$xlldf}llx")
-- "xllvfdllx}")

-- vim.keymap.set("n","<F4>", ":w <CR> [[wf_lyw :sp | hor resize 10 | term pytest % -k <C-r>0<CR>")
remap("n","<F4>", ":w <CR> [[wf_lyw :sp | hor resize 10 | term python -m pytest % -k <C-r>0<CR>")
-- vim.keymap.set("n","<F4>", ":w <CR> [[wf_lyw ")
-- vim.keymap.set("n","<leader>gd",":vs <CR>:<C-U>TmuxNavigatePrevious<cr>ZZ")
-- vim.cmd[[noremap <leader><leader>]]
remap("n","<leader><leader>gd", "gpd <CR> |:sleep 200m <CR> :vs % <CR> <C-o> gP")
remap("n","<leader><leader><leader>gd", "gpd <CR> |:sleep 1 <CR> :vs % <CR> <C-o> gP")
-- for vim-slime
-- vim.keymap.set("x", "<F9>", "<Plug>SlimeRegionSend")
-- vim.keymap.set("n", "<F9>", "<Plug>SlimeParagraphSend")
vim.keymap.set("n", "<F9>", "<S-v> <Plug>SlimeRegionSend j")
vim.keymap.set("n", "<F7>", "<S-v> <Plug>SlimeParagraphSend")
vim.g.slime_python_ipython = 1
-- vim.keymap.set("n","<leader><leader>gd","gd :vs <CR> <C-o>")
--\| hor resize 10 \| term
-- REMOVE COPILOT ON PYTHON FILES
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.b.copilot_enabled = 0
  end,
})
