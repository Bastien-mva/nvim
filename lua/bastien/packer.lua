-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
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
  use 'jpalardy/vim-slime'

  use {'neovim/nvim-lspconfig'}
  -- use { "williamboman/mason.nvim", cmd = { "Mason", "MasonInstall", "MasonUpdate" }, }

    use {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end,
    }

    use {
      "williamboman/mason-lspconfig.nvim",
      after = "mason.nvim",
      config = function()
        require("mason-lspconfig").setup()
      end,
    }


  -- use 'github/copilot.vim'
  use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
  use 'jiangmiao/auto-pairs'
  use 'neomake/neomake'
  use {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  config = function()
      require("bastien.cmp")
  end,
    }
  use {'hrsh7th/cmp-buffer', after ="nvim-cmp"}
  use {'hrsh7th/cmp-path', after = "nvim-cmp"}
  use {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
}
  -- use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-frecency.nvim',
      requires = {"nvim-lua/plenary.nvim"},
      after = "telescope.nvim",
       version = "*",
      config = function()
        require("telescope").load_extension "frecency"
      end,
      }
  use 'zbirenbaum/copilot.lua'
  use {'rmagatti/goto-preview', config = function() require('goto-preview').setup{default_mappings = true}end }
  -- Grammatical errors with ltex
  use {
    "barreiroleo/ltex_extra.nvim",
    ft = { "markdown", "tex" },
    -- yes, you can use the opts field, just I'm showing the setup explicitly
    config = function()
        require("ltex_extra").setup {
            server_opts = {
                capabilities = your_capabilities,
                on_attach = function(client, bufnr)
                    -- your on_attach process
                end,
                settings = {
                    ltex = {
                        dictionary = {['en-US'] = {'overdispersion'}},
                    }
                }
            },
        }
    end
}
  use 'lervag/vimtex'
  use 'engeljh/vim-latexfmt'
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use ('RyanMillerC/better-vim-tmux-resizer')
end)
