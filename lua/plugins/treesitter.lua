local M = {}

local languages = {
    "lua",
    "c",
    "cpp",
    "python",
    "rust",
    "javascript",
    "typescript",
    "bash",
    "html",
    "css",
    "json",
    "xml",
    "c_sharp"
}

function M.setup()
      require("nvim-treesitter.configs").setup({
        ensure_installed = languages,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {},
        },
    })
end


return M
