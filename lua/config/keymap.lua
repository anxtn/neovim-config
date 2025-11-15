vim.keymap.set("n", "<leader><Tab>", ":bnext<CR>", { noremap = true, silent = true, desc = "Next Buffer", })
vim.keymap.set("n", "<leader><S-Tab>", ":bprevious<CR>", { noremap = true, silent = true, desc = "Previous Buffer", })
vim.keymap.set("n", "<leader>c", ":cn<CR>", { noremap = true, silent = true, })
vim.keymap.set("n", "<leader>C", ":cp<CR>", { noremap = true, silent = true, })
