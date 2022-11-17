-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'ThePrimeagen/vim-be-good'
-- to see the branch name in the ligheline
  use 'itchyny/vim-gitbranch'
-- -- dark scheme 
  use 'tomasiser/vim-code-dark'
-- -- lightline 
  use 'itchyny/lightline.vim'
-- -- spawn a terminal 
  use 'kassio/neoterm' 
-- -- maximize the splits 
  use 'szw/vim-maximizer'
-- -- easily move across splits 
  use 'christoomey/vim-tmux-navigator'
-- -- Comment code 
  use 'tpope/vim-commentary'
-- -- format  code 
  use 'sbdchd/neoformat' 
-- -- pairs brackets 
  use 'jiangmiao/auto-pairs'
-- auto completion 
  use 'hrsh7th/nvim-cmp'
  -- plugins for autocompletion 
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-nvim-lsp'
-- fuzzy finding 
  use { "junegunn/fzf", run = ":call fzf#install()" }
  use "junegunn/fzf.vim"
end)
-- -- auto completion 
-- -- use 'nvim-lua/completion-nvim'
-- -- required plugin for the auto-completion 
-- -- use 'neovim/nvim-lspconfig'
-- use 'hrsh6th/cmp-nvim-lsp'
-- use 'hrsh6th/cmp-buffer'
--use 'hrsh6th/cmp-path'
-- use 'hrsh6th/cmp-cmdline'

-- end)
