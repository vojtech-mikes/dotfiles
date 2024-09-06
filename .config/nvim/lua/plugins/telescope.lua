return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 
	'nvim-lua/plenary.nvim',
	{
	    "nvim-telescope/telescope-fzf-native.nvim",
	    build = "make",
	    cond = function()
		return vim.fn.executable 'make' == 1
	    end,
	},
	{'nvim-telescope/telescope-ui-select.nvim'}
    },
    config = function()
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
	vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
	vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
	vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end
}
