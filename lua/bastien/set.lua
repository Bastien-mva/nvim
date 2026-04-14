vim.opt.guicursor = ""

vim.cmd[[set nocompatible]]
vim.cmd[[set undodir=~/.vim/undodir]]
vim.cmd[[set undofile]]
vim.cmd[[let g:neoformat_try_node_exe = 1]]
-- vim.cmd[[let g:copilot_filetypes = {'tex': v:false}]]
vim.cmd [[
highlight! TabLineSel ctermfg=15 ctermbg=4 cterm=bold
highlight! TabLine     ctermfg=15 ctermbg=8 cterm=none
highlight! TabLineFill ctermbg=0
]]

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true
vim.opt.buftype=""
vim.opt.wrap = false
vim.opt.scrolloff = 7


-- remove auto-commentary at the next line
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

vim.cmd[[let g:vimtex_compiler_latexmk_engines = {'lualatex':'-lualatex', 'luatex':'-lualatex'}]]
vim.g.neoformat_try_node_exe = 1
-- neomake : chargé en différé via lazy.nvim (voir lazy.lua)
vim.g.neomake_python_enabled_makers = { 'pylint' }
vim.g.slime_target = "neovim"
vim.g.slime_no_mappings = 1


-- vim.api.nvim_create_autocmd("BufEnter", {
--   callback = function()
--     local git_root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
--     if git_root and git_root ~= "" then
--       vim.cmd("cd " .. git_root)
--     end
--   end,
-- })
