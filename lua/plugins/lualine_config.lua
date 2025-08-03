local M = {}

function M.setup()
    local lualine = require("lualine")
    lualine.setup({
        options = {
            theme = "auto",
            icons_enabled = true,
            section_seperators = "",
            component_seperators = "|",
        },
    })
end

return M
