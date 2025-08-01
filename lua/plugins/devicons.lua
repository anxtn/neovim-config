local M = {}

function M.setup()
    local devicons = require("nvim-web-devicons")
    devicons.setup({
        default = true,
    })
end
return M;
