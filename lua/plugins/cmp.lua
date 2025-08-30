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

            local lsp_kinds = {
                Class = ' ',
                Color = ' ',
                Constant = ' ',
                Constructor = ' ',
                Enum = ' ',
                EnumMember = ' ',
                Event = ' ',
                Field = ' ',
                File = ' ',
                Folder = ' ',
                Function = ' ',
                Interface = ' ',
                Keyword = ' ',
                Method = ' ',
                Module = ' ',
                Operator = ' ',
                Property = ' ',
                Reference = ' ',
                Snippet = ' ',
                Struct = ' ',
                Text = ' ',
                TypeParameter = ' ',
                Unit = ' ',
                Value = ' ',
                Variable = ' ',
            }

            cmp.setup({
                formatting = {
                    format = function(entry, vim_item)
                        vim_item.kind = string.format("%s %s", lsp_kinds[vim_item.kind], vim_item.kind)
                        vim_item.menu = ({
                            buffer = "[Buffer]",
                            nvim_lsp = "[LSP]",
                            luasnip = "[LuaSnip]",
                            nvim_lua = "[Lua]",
                            latex_symbols = "[LaTeX]",
                        })[entry.source.name]
                        return vim_item
                    end,
                },

                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),

                sources = {
                    { name = "lazydev" },
                    { name = "nvim_lsp" },
                    { name = "luasnip" }, -- for future use
                    { name = "path" },
                },

                window = {
                    completion = cmp.config.window.bordered({
                        border = "rounded",
                        col_offset = -1,
                        scrollbar = false,
                        scrolloff = 3,
                        winhighlight = 'Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None',
                    }),
                    documentation = cmp.config.window.bordered({
                        border = "solid",
                        scrollbar = false,
                        winhighlight = 'CursorLine:Visual,Search:None',
                    }),
                },
            })
        end,
    },
}
