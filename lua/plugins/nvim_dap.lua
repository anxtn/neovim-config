return {
    {
        "mfussenegger/nvim-dap",
        depedencies = {},
        keys = {
            {
                "<F5>",
                function()
                    require("dap").continue()
                end,
                desc = "DEP: Start/Continue",
            },
            {
                "<F6>",
                function()
                    require("dap").terminate()
                end,
                desc = "DEP: Terminate",
            },
            {
                "<F11>",
                function()
                    require("dap").step_into()
                end,
                desc = "DEP: Step Into",
            },
            {
                "<F10>",
                function()
                    require("dap").step_over()
                end,
                desc = "DEP: Step Over",
            },
            {
                "<F9>",
                function()
                    require("dap").step_out()
                end,
                desc = "DEP: Step Out",
            },
            {
                "<leader>b",
                function()
                    require("dap").toggle_breakpoint()
                end,
                desc = "DEP: Toggle Breakpoint",
            },
        },

        config = function()
            local dap = require("dap")

            dap.adapters.codelldb = {
                type = "executable",
                command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
            }

            dap.configurations.c = {
                {
                    name = "Launch file",
                    type = "codelldb",
                    request = "launch",
                    program = function()
                        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
                    end,
                    cwd = "${workspaceFolder}",
                    stopOnEntry = false,
                    args = {},
                },
            }

            dap.configurations.cpp = dap.configurations.c
            dap.configurations.rust = dap.configurations.c

            vim.api.nvim_set_hl(0, "DapBreakpointColor", { fg = "#FF5555" })
            vim.fn.sign_define("DapBreakpoint", {
                text = "",
                texthl = "DapBreakpointColor",
                linehl = "",
                numhl = "",
            })
        end
    }
}
