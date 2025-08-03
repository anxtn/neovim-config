local M = {}

function M.setup()
    local catppuccin = require("catppuccin")
    catppuccin.setup({
        flavour = "mocha",
        integrations = {
            cmp = true,
            telescope = true,
            treesitter = true,
            nvimtree = true,
            notify = true,
        },
    })

    vim.cmd.colorscheme "catppuccin"
end
return M
