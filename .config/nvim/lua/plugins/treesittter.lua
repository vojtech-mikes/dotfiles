return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"lua",
			"go",
			"zig",
		},
		sync_install = true,
		highlight = {
			enable = true,
		},
	},
}
