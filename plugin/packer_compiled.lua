-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\FRBATA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1774638290\\share\\lua\\5.1\\?.lua;C:\\Users\\FRBATA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1774638290\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\FRBATA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1774638290\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\FRBATA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1774638290\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\FRBATA~1\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1774638290\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["better-vim-tmux-resizer"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\better-vim-tmux-resizer",
    url = "https://github.com/RyanMillerC/better-vim-tmux-resizer"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["copilot.lua"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["goto-preview"] = {
    config = { "\27LJ\2\nS\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\21default_mappings\2\nsetup\17goto-preview\frequire\0" },
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\goto-preview",
    url = "https://github.com/rmagatti/goto-preview"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  ["ltex_extra.nvim"] = {
    config = { "\27LJ\2\n\v\0\2\2\0\0\0\1K\0\1\0´\2\1\0\b\0\18\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\3\0006\4\4\0=\4\5\0033\4\6\0=\4\a\0035\4\r\0005\5\v\0005\6\t\0005\a\b\0=\a\n\6=\6\f\5=\5\14\4=\4\15\3=\3\17\2B\0\2\1K\0\1\0\16server_opts\1\0\1\16server_opts\0\rsettings\tltex\1\0\1\tltex\0\15dictionary\1\0\1\15dictionary\0\nen-US\1\0\1\nen-US\0\1\2\0\0\19overdispersion\14on_attach\0\17capabilities\22your_capabilities\1\0\3\rsettings\0\14on_attach\0\17capabilities\0\nsetup\15ltex_extra\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\ltex_extra.nvim",
    url = "https://github.com/barreiroleo/ltex_extra.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neomake = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neomake",
    url = "https://github.com/neomake/neomake"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-frecency.nvim"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0" },
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-code-dark",
    url = "https://github.com/tomasiser/vim-code-dark"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-gitbranch"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-gitbranch",
    url = "https://github.com/itchyny/vim-gitbranch"
  },
  ["vim-latexfmt"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-latexfmt",
    url = "https://github.com/engeljh/vim-latexfmt"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-slime"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-slime",
    url = "https://github.com/jpalardy/vim-slime"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  vimtex = {
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0" },
    loaded = true,
    path = "C:\\Users\\FRBatardBa\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: goto-preview
time([[Config for goto-preview]], true)
try_loadstring("\27LJ\2\nS\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\21default_mappings\2\nsetup\17goto-preview\frequire\0", "config", "goto-preview")
time([[Config for goto-preview]], false)
-- Config for: telescope-frecency.nvim
time([[Config for telescope-frecency.nvim]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\rfrecency\19load_extension\14telescope\frequire\0", "config", "telescope-frecency.nvim")
time([[Config for telescope-frecency.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType tex ++once lua require("packer.load")({'ltex_extra.nvim'}, { ft = "tex" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'ltex_extra.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
