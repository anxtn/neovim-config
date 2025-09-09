return {
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
        },
        config = function()
            local mason_lsp_config = require("mason-lspconfig")
            mason_lsp_config.setup({
                ensure_installed = {
                    "lua_ls",
                    "clangd",
                    "pyright",
                    "vtsls",
                },
            })
        end,
    }
}
