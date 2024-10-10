return {
	"rose-pine/neovim",
	name = "rose-pine",
	opts = {
		variant = "dawn",
		dark_variant = "moon",
	},
	config = function()
		vim.cmd.colorscheme("rose-pine")
	end,
}
