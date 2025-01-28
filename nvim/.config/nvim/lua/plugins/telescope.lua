return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
    	local telescope = require("telescope")
	local builtin = require("telescope.builtin")

	telescope.setup {}

	vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
	vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Telescope oldfiles' })

	vim.keymap.set('n', '<leader>ff', function ()
	    builtin.find_files({hidden=true})
	end, { desc = 'Telescope find files' })

	vim.keymap.set('n', '<leader>fc', function ()
	    builtin.find_files({cwd=vim.fn.stdpath('config')})
	end, { desc = 'Telescope edit config files' })

    end
}
