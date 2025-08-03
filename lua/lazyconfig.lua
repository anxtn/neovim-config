local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    --neodev
    {
        "folke/neodev.nvim",
        config = function()
            require("plugins.neodev").setup()
        end,
    },

    -- bufferline 
    {
        "akinsho/bufferline.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("plugins.bufferline_config").setup()
        end
    },

    -- lualine
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("plugins.lualine_config").setup()
        end
    },

    -- catppuccin
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        lazy = false,
        config = function()
            require("plugins/catppuccin").setup()
        end,
    },

    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("plugins.treesitter").setup()
        end,
    },

    -- mason
    {
        "williamboman/mason.nvim",
        config = function()
            require("plugins.mason").setup()
        end,
    },

    -- mason lsp config
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "folke/neodev.nvim",
            "williamboman/mason.nvim",
            "folke/neodev.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("plugins.lsp").setup()
        end,
    },

    -- nvim-cmp
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            require("plugins.cmp").setup()
        end
    },

    -- telescope
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        config = function ()
            require("plugins.telescope").setup()
        end
    },

    -- autopairs
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function ()
           require("plugins.autopairs").setup()
        end,
    },

    -- neotree
    {
        "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function ()
            require("plugins.neotree").setup()
        end
    },

    -- devicons
    {
        "nvim-tree/nvim-web-devicons",
        lazy = true,
        config = function ()
            require("plugins.devicons").setup()
        end
    },

})
