return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            local neotree = require("neo-tree")
            neotree.setup({
                open_on_setup = true,
                close_if_last_window = true,
                enable_diagnostics = true,
                sort_case_insensitive = true,
                use_libuv_file_watcher = true,
                enabel_git_status = true,
                window = {
                    position = "right",
                    width = 30,
                    mappings = {
                        ["<space>"] = "none",
                    },
                },
                filesystem = {
                    filtered_items = {
                        visible = true,
                        hide_dotfiles = false,
                        hide_gitignored = false,
                    },
                    follow_current_file = {
                        enabled = true,
                    },
                },
                default_component_configs = {
                    git_status = {
                        symbols = {
                            added     = "",
                            deleted   = "",
                            modified  = "",
                            renamed   = "",
                            untracked = "",
                            ignored   = "",
                            unstaged  = "󰄱",
                            staged    = "",
                            conflict  = "",
                        }
                    }
                },
            })
        end,
    },
}
