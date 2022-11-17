vim.cmd[[autocmd FileType python nnoremap <buffer> <F9> :update<bar>!python %<CR>]]

vim.g.mapleader = " "


function map(mode, lhs, rhs, opts)
        local options = { noremap = true }
            if opts then
                        options = vim.tbl_extend("force", options, opts)
                            end
                                vim.api.nvim_set_keymap(mode, lhs, rhs, options)
                            end


map("n","<leader>m", ":MaximizerToggle!<CR>")
map("n", "<c-q>", ":Ttoggle<CR>")
map("i", "<c-q>", "<Esc>:Ttoggle<CR>")
-- map("t", "<c-q>", "<c-\><c-n>:Ttoggle<CR>")
