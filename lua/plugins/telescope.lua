return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files" }, 
        { "<leader>ft", "<cmd>Telescope live_grep<CR>", desc = "Find Text" },
    },
    config = function ()
        require("telescope").setup({})
    end,
}
