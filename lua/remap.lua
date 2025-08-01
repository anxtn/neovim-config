vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>ft", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>e", "<cmd>:Neotree focus<CR>", {noremap = true, silent = true})
