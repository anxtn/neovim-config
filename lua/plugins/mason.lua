return {
    {
        "mason-org/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            local mason = require("mason")
            mason.setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
        },
        config = function()
            local mason_lsp_config = require("mason-lspconfig")
            mason_lsp_config.setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                },
            })
        end,
    },
}
