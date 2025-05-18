local M = { 'echasnovski/mini.nvim', version = '*' }


function M.config()
    require("mini.icons").setup()
    -- require("mini.completion").setup()
    require("mini.comment").setup()
end

return M
