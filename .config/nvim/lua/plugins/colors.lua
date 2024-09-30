return { 
	"thimc/gruber-darker.nvim",
	name = "gd",
	priority = 1000,
	opts = {},
	init = function()
		vim.cmd.colorscheme 'gruber-darker'
	end,
}
