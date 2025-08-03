local M = {}

function M.setup()
    local bufferline = require("bufferline")
    bufferline.setup({
        options = {
            numbers = "ordinal",
            close_command = "bdelete!",
            diagnostics = "nvim_lsp",
            offsets = {{
                filetype = "neo-tree",
                text = "Explorer",
                highlight = "Directory",
                text_align = "center",
            }},
            show_buffer_close_icons = true,
            show_close_icon = false,
--            seperator_style = "thin",
        },
    })
end
return M
