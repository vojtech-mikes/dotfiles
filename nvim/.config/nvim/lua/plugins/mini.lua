return { 
    'echasnovski/mini.nvim',
    version = false,
    enabled = true,
    config = function()
	local statusline = require "mini.statusline"
	local icons = require "mini.icons"
	statusline.setup { use_icons = true }
	icons.setup {}
    end
}
