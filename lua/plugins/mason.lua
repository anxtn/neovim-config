return {
    {
        "mason-org/mason.nvim",
        build = ":MasonUpdate",
        config = function()
            local mason = require("mason")
            mason.setup()
        end,
    }
}
