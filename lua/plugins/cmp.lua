return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "folke/lazydev.nvim",
            "mason-org/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = {
                    { name = "lazydev" },
                    { name = "nvim_lsp" },
                    { name = "path" },
                },
            })
        end,
    },
}
