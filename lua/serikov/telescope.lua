local M = { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' } }
local MB = { "nvim-telescope/telescope-file-browser.nvim", dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" } }
local MS = { "nvim-telescope/telescope-ui-select.nvim" }

local stop_insert = function()
    vim.schedule(
        function()
            vim.cmd("stopinsert")
        end
    )
end

local keymap = vim.keymap

function M.config()
    local telescope = require('telescope')
    local telescope_builtin = require('telescope.builtin')
    -- telescope.load_extension("telescope-ui-select")
    --
    local telescope_themes = require("telescope.themes")
    telescope.setup({
        pickers = {
            find_files = { telescope_themes.get_cursor{} }
        },
        extensions = {
            ["ui-select"] = {
                telescope_themes.get_cursor {
                }
            }
        }
    })
    telescope.load_extension("ui-select")
    keymap.set(
        'n',
        '<leader><leader>',
        function()
            telescope_builtin.find_files()
        end,
        { desc = 'Telescope find files' }
    )
    keymap.set(
        'n',
        '<leader>ff',
        function()
            telescope_builtin.live_grep()
        end,
        { desc = 'Telescope find files' }
    )

    keymap.set(
        "n",
        "<leader>e",
        function()
            telescope.extensions.file_browser.file_browser({
                path = vim.fn.expand("%:p:h"),
                select_buffer = true
            })
            stop_insert()
        end
    )
end

return { MS, M, MB }
-- return vim.tbl_extend("force", M, MB)
