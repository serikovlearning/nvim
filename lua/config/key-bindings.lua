local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, { desc = 'Telescope live grep' })

-- Telescope File Browser
vim.keymap.set(
	"n",
	"<leader>e",
	function()
		require("telescope").extensions.file_browser.file_browser({
    			path = vim.fn.expand("%:p:h"),
    			select_buffer = true
		})
		vim.schedule(function()
			vim.cmd("stopinsert")
		end)
	end
)
