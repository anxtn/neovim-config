return {
    {
        "akinsho/bufferline.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            local bufferline = require("bufferline")
            bufferline.setup({
                options = {
                    numbers = "buffer_id",
                    close_command = "bdelete!",
                    diagnostics = "nvim_lsp",
                    offsets = { {
                        filetype = "neo-tree",
                        text = "Explorer",
                        highlight = "Directory",
                        text_align = "center",
                    } },
                    show_buffer_close_icons = false,
                    show_close_icon = false,
                },
            })
        end,
    },
}
