return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {
		{ 'nvim-lua/plenary.nvim' },
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	config = function()
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files, current dir" })

		vim.keymap.set("n", "<leader>ec", function()
				builtin.find_files { cwd = vim.fn.stdpath "config" }
			end,
			{ desc = "Open config files" })

		vim.keymap.set("n", "<leader>lg", builtin.live_grep, { desc = "Live grep in current dir" })

		vim.keymap.set("n", "<leader>of", builtin.oldfiles, { desc = "Search old files" })

		vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "Find references" })

		vim.keymap.set("n", "<leader>fd", builtin.lsp_definitions, { desc = "Find definitions" })
	end
}
