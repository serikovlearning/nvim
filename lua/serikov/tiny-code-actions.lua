local M = {
    "rachartier/tiny-code-action.nvim",
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        -- optional picker via telescope
        { "nvim-telescope/telescope.nvim" },
    },
    event = "LspAttach",
    opts = {},
}


function M.config()
    vim.keymap.set("n", "g.", function()
        require("tiny-code-action").code_action()
    end, { noremap = true, silent = true })
end

return M
