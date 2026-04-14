-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    -- Colorschemes
    { "folke/tokyonight.nvim",   lazy = true },
    { "tomasiser/vim-code-dark", lazy = true },

    -- Statusline (visible dès le départ)
    {
        "itchyny/lightline.vim",
        event = "VimEnter",
        dependencies = { "itchyny/vim-gitbranch" },
    },

    -- Maximize splits
    { "szw/vim-maximizer", cmd = "MaximizerToggle" },

    -- Tmux navigator (mappings manuels dans keymap.lua, no_mappings = 1)
    {
        "christoomey/vim-tmux-navigator",
        event = "VeryLazy",
    },

    -- Commentaire de code
    {
        "tpope/vim-commentary",
        keys = { { "gc", mode = { "n", "v" } }, { "gcc" } },
    },

    -- Slime : les globals sont dans set.lua (lus au runtime, pas besoin d'init)
    {
        "jpalardy/vim-slime",
        keys = { "<Plug>SlimeRegionSend", "<Plug>SlimeParagraphSend", "<Plug>SlimeLineSend" },
        ft = { "python", "r", "lua" },
    },

    { "rmagatti/logger.nvim", lazy = true },

    -- LSP (chargé seulement à l'ouverture d'un fichier)
    { "neovim/nvim-lspconfig", lazy = true },

    -- Mason : seulement via commandes
    {
        "williamboman/mason.nvim",
        cmd = { "Mason", "MasonInstall", "MasonUpdate", "MasonUninstall" },
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        cmd = { "Mason", "MasonInstall", "MasonUpdate" },
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup()
        end,
    },

    -- Which-key : après le démarrage
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup()
        end,
    },

    -- Auto-pairs : seulement en mode insertion
    { "jiangmiao/auto-pairs", event = "InsertEnter" },

    -- Neomake : seulement au write, PAS en idle normal mode (le 'n' causait du lag)
    {
        "neomake/neomake",
        event = { "BufWritePost" },
        config = function()
            vim.fn["neomake#configure#automake"]("w")
        end,
    },

    -- Autocomplétion
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
        },
        config = function()
            require("bastien.cmp")
        end,
    },

    -- Telescope : lazy sur commandes et keymaps
    {
        "nvim-telescope/telescope.nvim",
        cmd = "Telescope",
        keys = {
            { "<leader>tg", "<cmd>Telescope git_files<cr>" },
            { "<leader>tf", "<cmd>Telescope find_files<cr>" },
            { "<leader>tt", "<cmd>Telescope live_grep<cr>" },
            { "<leader>tb", "<cmd>Telescope buffers<cr>" },
            { "<leader>ts", "<cmd>Telescope grep_string<cr>" },
        },
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local actions = require("telescope.actions")
            require("telescope").setup({
                defaults = {
                    mappings = {
                        i = { ["<C-b>"] = actions.select_vertical },
                    },
                },
            })
        end,
    },
    {
        "nvim-telescope/telescope-frecency.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require("telescope").load_extension("frecency")
        end,
    },

    -- Copilot : seulement en mode insertion
    {
        "zbirenbaum/copilot.lua",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                suggestion = { enabled = true, auto_trigger = true },
                panel = { enabled = false },
                filetypes = { python = false },
            })
        end,
    },

    -- Goto preview
    {
        "rmagatti/goto-preview",
        keys = { "gpd", "gpi", "gpr", "gP" },
        config = function()
            require("goto-preview").setup({ default_mappings = true, debug = false })
        end,
    },

    -- LaTeX
    {
        "barreiroleo/ltex_extra.nvim",
        ft = { "markdown", "tex" },
        config = function()
            require("ltex_extra").setup({
                server_opts = {
                    settings = {
                        ltex = {
                            dictionary = { ["en-US"] = { "overdispersion" } },
                        },
                    },
                },
            })
        end,
    },
    { "lervag/vimtex",          ft = { "tex", "latex" } },
    { "engeljh/vim-latexfmt",   ft = { "tex", "latex" } },

    -- Treesitter : au premier fichier ouvert
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPost", "BufNewFile" },
        build = ":TSUpdate",
    },

    -- Tmux resizer
    {
        "RyanMillerC/better-vim-tmux-resizer",
        keys = { "²h", "²l", "²k", "²j" },
    },

}, {
    performance = {
        rtp = {
            -- Désactive les plugins Neovim natifs inutiles
            disabled_plugins = {
                "gzip", "tarPlugin", "tohtml", "tutor", "zipPlugin",
                "netrwPlugin", "matchit", "matchparen",
            },
        },
    },
})
