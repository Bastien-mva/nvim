vim.g.tokyonight_transparent_sidebar = false
vim.g.tokyonight_transparent = false
vim.opt.background = "dark"
-- vim.opt.background = "light"

function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='white', bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='white', bold=true })
end

vim.cmd("colorscheme tokyonight")
LineNumberColors()
