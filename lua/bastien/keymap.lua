vim.cmd[[autocmd FileType python nnoremap <buffer> <F9> :w \| Dispatch python  % <CR>]]

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
map("i", "<c-q>", "<Esc>| :vs | :Ttoggle<CR>")
map("t", "ZZ", "<c-\\><c-n>:Ttoggle<CR>")
-- neoformat 
map("n", "<leader>F", ":Neoformat prettier<CR>")
-- junegunn/fzf.vim  
map("n", "<leader><space>", ":GFiles<CR>")
-- jump to definition for nvim autocompletion 
map("n", "gd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>")

vim.g.tmux_navigator_no_mappings = 1
vim.cmd[[noremap <silent> <C-h> :w<CR>\|:<C-U>TmuxNavigateLeft<cr>]]
vim.cmd[[noremap <silent> <C-j> :w<CR>\|:<C-U>TmuxNavigateDown<cr>]]
vim.cmd[[noremap <silent> <C-k> :w<CR>\|:<C-U>TmuxNavigateUp<cr>]]
vim.cmd[[noremap <silent> <C-l> :w<CR>\|:<C-U>TmuxNavigateRight<cr>]]
vim.cmd[[noremap <silent> <C-,> :w<CR>\|:<C-U>TmuxNavigatePrevious<cr>]]

