vim.lsp.config("typescript-language-server", {
    cmd = { "typescript-language-server", "--stdio" },
    settings = {
        ['typescript-language-server'] = {
            codeLens = {
                enable = true
            }
        }
    },
})

vim.lsp.config("vtsls", {
    cmd = { "vtsls", "--stdio" },
    settings = {
        ["vtsls"] = {}
    }
})
vim.lsp.config("lua-language-server", {
    cmd = { "lua-language-server" },
    filetypes = { 'lua' },
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            },
            workspace = {
                checkThirdParty = false,
            },
            codeLens = {
                enable = true,
            },
            completion = {
                callSnippet = "Replace",
            },
            doc = {
                privateName = { "^_" },
            },
            hint = {
                enable = true,
                setType = true,
                paramType = true,
                paramName = "Disable",
                semicolon = "Disable",
                arrayIndex = "Disable",
            },
        },
    }
})

-- vim.lsp.enable("typescript-language-server")
vim.lsp.enable("lua-language-server")
vim.lsp.enable("vtsls")

-- Setup dignostics
local icons = require("config.icons")
vim.diagnostic.config({
    virtual_text = {
        spacing = 2,
        prefix = function(diagnostic)
            local severity = vim.diagnostic.severity
            local icons_map = {
                [severity.ERROR] = icons.diagnostics.Error,
                [severity.WARN] = icons.diagnostics.Warning,
                [severity.INFO] = icons.diagnostics.Information,
                [severity.HINT] = icons.diagnostics.Hint,
            }
            return icons_map[diagnostic.severity] or "•"
        end,
    },
    signs = false,
    --  	signs = {
    -- 	active = false,
    -- 	values = {
    -- 		{ name = "DiagnosticSignError", text = icons.diagnostics.Error },
    -- 		{ name = "DiagnosticSignWarn", text = icons.diagnostics.Warning },
    -- 		{ name = "DiagnosticSignHint", text = icons.diagnostics.Hint },
    -- 		{ name = "DiagnosticSignInfo", text = icons.diagnostics.Information },
    -- 	},
    -- },
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = true
})


-- formattings
vim.keymap.set(
    'n',
    'gf',
    function()
        vim.lsp.buf.format({ async = true })
    end
)
