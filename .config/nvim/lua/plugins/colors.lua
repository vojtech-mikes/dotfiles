return { 
	 "rose-pine/neovim", 
	 name = "rose-pine",
	 priority = 1000,
	 opts = {
	 	variant = "moon"
	} ,
    init = function()
		vim.cmd.colorscheme 'rose-pine'
    end,
}
