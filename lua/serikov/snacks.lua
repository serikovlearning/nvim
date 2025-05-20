local M = {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        indent = { enabled = true },
        notifier = { enabled = true },
        git = { enabled = true },
        animate = { enabled = true },
        statuscolumn = { enabled = true },
        scroll = { enabled = true },
        dim = {
            enabled = true,
            ---@type snacks.scope.Config
            scope = {
                min_size = 5,
                max_size = 20,
                siblings = true,
            },
        }
    },
}

function M.config()
    local snacks = require("snacks")
    snacks.dim.enable()
end

return M
