return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	opts = {
		flavour = "frappe",
	},
	config = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
