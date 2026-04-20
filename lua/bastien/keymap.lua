-- keymap.lua
-- Keymaps et text objects personnalisés.
-- Contient : text objects $...$ (LaTeX), navigation rapide, clipboard système,
-- intégration Copilot CLI, resize Tmux, substitutions, ouverture de terminaux,
-- lancement de tests pytest, et recherche Telescope.

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
map("n","<leader>f", ":MaximizerToggle!<CR>")

map("n","<leader><leader>rr", "_iprint('')<Esc>hvld$phhyi'$i,<Esc>p")

vim.g.tmux_navigator_no_mappings = 1
-- copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("n", "<C-y>", 'i 1<CR>', { silent = true, expr = true })
-- vim.keymap.set("n","<leader>cc",":CopilotChatOpen<CR>")

vim.keymap.set("n", "se", vim.diagnostic.open_float, {
  desc = "Afficher diagnostic sous le curseur"
})

-- vim.keymap.set("n", "<leader>cc", function()
--   -- fichier courant (chemin relatif au cwd)
--   local file = vim.fn.expand("%")
--   if file == "" then
--     file = nil
--   end

--   -- ouvrir Copilot
--   vim.cmd("vsplit")
--   vim.cmd("terminal copilot --continue")
--   vim.cmd("startinsert")

--   -- injecter le contexte du fichier courant
--   if file then
--     local msg = "Je travaille sur le fichier @" .. file .. ".\n"
--     vim.api.nvim_feedkeys(msg, "t", false)
--   end
-- end, { desc = "Open Copilot with current file context" })

vim.keymap.set("n", "<leader><leader>cc", function()
  -- ouvrir Copilot
  vim.cmd("vsplit")
  vim.cmd("terminal copilot")
end, { desc = "Open Copilot with current file context" })
vim.keymap.set("n", "<leader>cc", function()
  -- ouvrir Copilot
  vim.cmd("vsplit")
  vim.cmd("terminal copilot --continue")
end, { desc = "Open Copilot with current file context" })


vim.keymap.set("t", "jk", [[<C-\><C-n>]],
  { noremap = true, silent = true, desc = "Exit terminal mode" }
)
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]],
  { noremap = true, silent = true, desc = "Exit terminal mode" }
)
vim.keymap.set("v", "<leader>h", function()
  -- 1. Récupérer les bornes de la sélection visuelle
  local start_pos = vim.fn.getpos("'<")
  local end_pos   = vim.fn.getpos("'>")

  local start_line = start_pos[2] - 1
  local end_line   = end_pos[2] - 1

  -- 2. Extraire les lignes sélectionnées
  local lines = vim.api.nvim_buf_get_lines(0, start_line, end_line + 1, false)
  local text = table.concat(lines, "\n")

  -- 3. Aller dans la fenêtre Copilot (à droite)
  vim.cmd("wincmd h")

  -- 4. Injecter le texte dans le terminal Copilot
  local payload = "i Je parle du code suivant :\n" .. text .. "\n"

  vim.api.nvim_feedkeys(payload, "t", false)
end, { desc = "Send visual selection to Copilot CLI" })

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
vim.keymap.set("n","<leader><leader>h" ,":leftabove vsp | vert resize 40 | term<CR> A")
vim.keymap.set("n","<leader><leader>l" ,":rightbelow vsp | vert resize 40 | term<CR> A")
vim.keymap.set("n","<leader><leader>i" ,":sp | hor resize 10 | term uv run ipython <CR> A")
vim.keymap.set("n","<leader><leader><leader>i" ,":sp | hor resize 10 | term uv run ipython <CR> :TmuxNavigateDown <CR> :SlimeConfig <CR> <CR>")
vim.keymap.set("n","<leader><leader>r" ,":sp | hor resize 10 | term R <CR> A")

-- vim.keymap.set("n","<F4>", ":w <CR> [[wf_lyw :sp | hor resize 10 | term pytest % -k <C-r>0<CR>")
remap("n","<F4>", ":w <CR> [[wf_lyw :sp | hor resize 10 | term python -m pytest % -k <C-r>0<CR>")
-- vim.keymap.set("n","<F4>", ":w <CR> [[wf_lyw ")
-- vim.keymap.set("n","<leader>gd",":vs <CR>:<C-U>TmuxNavigatePrevious<cr>ZZ")
-- vim.cmd[[noremap <leader><leader>]]
remap("n","<leader><leader>gd", "gpd <CR> |:sleep 200m <CR> :vs % <CR> <C-o> gP")
remap("n","<leader><leader><leader>gd", "gpd <CR> |:sleep 1 <CR> :vs % <CR> <C-o> gP")
-- for vim-slime
vim.keymap.set("n", "<F1>", "<Plug>SlimeLineSend")
vim.keymap.set("n", "<F9>", "<Plug>SlimeRegionSend")
vim.keymap.set("v", "<F9>", "<Plug>SlimeRegionSend")
vim.keymap.set("n", "<F2>", "<Plug>SlimeParagraphSend")
vim.keymap.set("n", "<C-F10>", ":%SlimeSend<CR>", { silent = true })
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

vim.o.shell = "bash"
vim.o.shellcmdflag = "-c"
vim.o.shellquote = ""
vim.o.shellxquote = ""


------- TELESCOPE
vim.keymap.set('n', '<leader>tg', '<cmd>Telescope git_files<cr>')
vim.keymap.set('n', '<leader>tf', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>tt', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>tb', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<leader>ts', '<cmd>Telescope grep_string<cr>')
