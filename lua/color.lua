vim.o.termguicolors = true

local nvim_set_hl = vim.api.nvim_set_hl;

nvim_set_hl(0, "Normal",       { bg = "#1a1a1a", italic = false})
nvim_set_hl(0, "LineNr",       { fg = "#dcdcdc", italic = false})
nvim_set_hl(0, "@function",    { fg = "#dcdcdc", italic = false})
nvim_set_hl(0, "@number.float",{ fg = "#b5cea8", italic = false})
nvim_set_hl(0, "@number",      { fg = "#b5cea8", italic = false})
nvim_set_hl(0, "@comment",     { fg = "#57a64a", italic = true })
nvim_set_hl(0, "@type.builtin",{ fg = "#569cd6", italic = false})
nvim_set_hl(0, "@type"  ,      { fg = "#4ec9b0", italic = false})
nvim_set_hl(0, "@string",      { fg = "#d69d85", italic = false})
nvim_set_hl(0, "@boolean",     { fg = "#569cd6", italic = false})
nvim_set_hl(0, "@keyword",     { fg = "#569cd6", italic = false})


