vim.lsp.enable({
    "clangd",
    "lua_ls",
    "pyright",
    "vtsls",
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local bufnr = args.buf
        local client = vim.lsp.get_client_by_id(args.data.client_id)

        local capabilities = client and client.server_capabilities

        if capabilities and capabilities.definitionProvider then
            vim.keymap.set(
                "n",
                "gd",
                vim.lsp.buf.definition,
                { buffer = bufnr, noremap = true, silent = true, desc = "LSP: Go to definition" }
            )
        end

        local open_qf_diagnostic = function()
            vim.diagnostic.setqflist({ open = true })
        end

        vim.keymap.set(
            "n",
            "<leader>qd",
            open_qf_diagnostic,
            { buffer = bufnr, noremap = true, silent = true, desc = "LSP: Open quickfix diagnostics" }
        )

        if capabilities and capabilities.documentFormattingProvider then
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = bufnr,
                callback = function()
                    if client then
                        vim.lsp.buf.format({ bufnr = bufnr, id = client.id })
                    end
                end
            })
        end

        vim.api.nvim_create_autocmd("CursorHold", {
            buffer = bufnr,
            callback = function()
                local diagnostics = vim.diagnostic.get(bufnr, { lnum = vim.fn.line(".") - 1 })
                if #diagnostics > 0 then
                    vim.diagnostic.open_float(nil, {
                        focus = false,
                        scope = "cursor",
                        border = "rounded",
                    })
                end
            end,
        })
    end,
})
