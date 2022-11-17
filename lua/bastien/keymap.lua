vim.cmd[[autocmd FileType python nnoremap <buffer> <F9> :update<bar>!python %<CR>]]

vim.g.mapleader = " "


function map(mode, lhs, rhs, opts)
        local options = { noremap = true }
            if opts then
                        options = vim.tbl_extend("force", options, opts)
                            end
                                vim.api.nvim_set_keymap(mode, lhs, rhs, options)
                            end


map("n","<leader>m", ":MaximizerToggle!<CR>i ")
-- kassio/neoterm 
map("n", "<c-q>", ":vs  | :Ttoggle<CR>")
map("i", "<c-q>", "<Esc>:Ttoggle<CR>")
map("t", "ZZ", "<c-\\><c-n>:Ttoggle<CR>")
-- neoformat 
map("n", "<leader>F", ":Neoformat prettier<CR>")
-- junegunn/fzf.vim  
map("n", "<leader><space>", ":GFiles<CR>")
-- jump to definition for nvim autocompletion 
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
