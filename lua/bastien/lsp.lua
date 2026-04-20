vim.lsp.config("pyright", {})
vim.lsp.enable("pyright", {
  cmd = { "pyright-langserver.cmd", "--stdio" },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.lsp.start({
      name = "pyright",
      cmd = { "pyright-langserver.cmd", "--stdio" },
      -- root_dir = vim.fn.getcwd(),
    })
  end,
})


vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.lsp.start({
      name = "marksman",
      cmd = { "marksman", "server" }, -- ou "serve", selon ton install
      -- root_dir = vim.fn.getcwd(),
    })
  end,
})


