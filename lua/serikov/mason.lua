local M = { "mason-org/mason.nvim" }

function M.config()
    local module = require("mason")
    module.setup()
end

return M
