return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio",
    },
    config = function()
        local dap, dapui = require("dap"), require("dapui")
        dapui.setup()
        vim.keymap.set("n", "<leader>do", dapui.toggle, {})
        vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
        vim.keymap.set("n", "<leader>dc", dap.continue, {})
        vim.keymap.set("n", "<leader>ds", dap.step_over, {})
        vim.keymap.set("n", "<leader>di", dap.step_into, {})
    end
}
