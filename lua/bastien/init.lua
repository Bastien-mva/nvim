-- print('init from bastien/lua works fine') 
-- require('bastien')
-- require('bastien.plugin')
require('bastien.packer')
require('bastien.set')
require('bastien.cmp')
require('bastien.keymap')
--vim.g.mapleader = " "

--vim.cmd [[nnoremap <F9> :echo system('python "' . expand('%') . '"')<cr>]]
--local n_keymap = function(lhs, rhs)
--        vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
--    end
--
--local i_keymap = function(lhs, rhs)
--        vim.api.nvim_set_keymap('i', lhs, rhs, { noremap = true, silent = true })
--    end
--local t_keymap = function(lhs, rhs)
--        vim.api.nvim_set_keymap('t', lhs, rhs, { noremap = true, silent = true })
--    end
---- kassio/neoterm, for a nice terminal 
--
--n_keymap('<leader>m', ':MaximizerToggle!<CR>')
--n_keymap('<c-q>', ':Ttoggle<CR>')
--i_keymap('<c-q>', '<Esc>:Ttoggle<CR>')
---- t_keymap('<c-q>', '<c-\><c-n>:Ttoggle<CR>')
--vim.cmd[[ tnoremap <c-q> <c-\><c-n>Ttoggle<CR>]]
--
---- sbdchd/neoformat 
--
--n_keymap('<leader>F', ':Neoformat prettier<CR>')
