local M = {}

local lspServers = {
    "pyright",
    "clangd",
    "ts_ls",
    "rust_analyzer",
    "lua_ls",
    "bashls",
    "html",
    "cssls",
    "jsonls",
    "cmake"
}

function M.setup()
    local mason_lspconfig = require("mason-lspconfig")
    local lspconfig = require("lspconfig")

    mason_lspconfig.setup({
        ensure_installed = lspServers,
        handlers = {
            function(server_name)
                lspconfig[server_name].setup {}
            end,
        },
    })
end

return M;
