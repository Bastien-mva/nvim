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
  -- use 'hrsh7th/nvim-cmp'
  -- plugins for autocompletion 
  -- use 'hrsh7th/cmp-buffer'
  -- use 'hrsh7th/cmp-path'
  -- use 'hrsh7th/cmp-cmdline'
  -- use 'saadparwaiz1/cmp_luasnip'
  -- use 'hrsh7th/cmp-nvim-lsp'
  -- use 'hrsh7th/cmp-nvim-lua'
-- fuzzy finding 
-- use { "junegunn/fzf", run = ":call fzf#install()" }
   use {
         'VonHeikemen/lsp-zero.nvim',
           requires = {
                   -- LSP Support
                       {'neovim/nvim-lspconfig'},
                           {'williamboman/mason.nvim'},
                               {'williamboman/mason-lspconfig.nvim'},

                                   -- Autocompletion
                                       {'hrsh7th/nvim-cmp'},
                                           {'hrsh7th/cmp-buffer'},
                                               {'hrsh7th/cmp-path'},
                                                   {'saadparwaiz1/cmp_luasnip'},
                                                       {'hrsh7th/cmp-nvim-lsp'},
                                                           {'hrsh7th/cmp-nvim-lua'},

                                                               -- Snippets
                                                                   {'L3MON4D3/LuaSnip'},
                                                                       {'rafamadriz/friendly-snippets'},
                                                                         }
                                                                     }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
          requires = { {'nvim-lua/plenary.nvim'} }
      }
  -- use "junegunn/fzf.vim"
  -- to go to definition 
  use {'rmagatti/goto-preview', config = function() require('goto-preview').setup{default_mappings = true}end }
  -- use 'pechorin/any-jump.vim'
  -- to highlight erros 
  use 'dense-analysis/ale'
  -- to get output in anoter window (REPL)
  use 'tpope/vim-dispatch'

  -- error highlighting 
  use 'lervag/vimtex'
  -- use 'Shougo/deoplete.nvim'
  -- use 'sirVer/ultisnips'
  -- use 'honza/vim-snippets'
  use 'engeljh/vim-latexfmt'

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
end)
