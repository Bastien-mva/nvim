vim.g.tokyonight_transparent_sidebar = true
vim.g.tokyonight_transparent = true
vim.opt.background = "dark"

function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='white', bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='white', bold=true })
end

vim.cmd("colorscheme tokyonight")
LineNumberColors()

