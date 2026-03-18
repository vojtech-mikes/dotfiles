local lsps_config = {
    lua_ls = {},
    pyright = {}
}

local function load_lsps(lsp_config)
    for server, config in pairs(lsp_config) do
	vim.lsp.config(server, config)
	vim.lsp.enable(server)
	require('blink.cmp').get_lsp_capabilities(config.capabilities)
    end
end

return {
    "neovim/nvim-lspconfig",
    dependencies = {
	{
	    "folke/lazydev.nvim",
	    ft = "lua", -- only load on lua files
	    opts = {
		library = {
		    -- See the configuration section for more details
		    -- Load luvit types when the `vim.uv` word is found
		    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
		},
	    },
	},
	{
	    'saghen/blink.cmp',
	    dependencies = { 'rafamadriz/friendly-snippets' },

	    version = '1.*',

	    ---@module 'blink.cmp'
	    ---@type blink.cmp.Config
	    opts = {
		keymap = { preset = 'default' },

		appearance = {
		    nerd_font_variant = 'normal'
		},

		completion = { documentation = { auto_show = false } },

		sources = {
		    default = { 'lsp', 'path', 'snippets', 'buffer' },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" }
	    },
	    opts_extend = { "sources.default" }
	}
    },
    config = function()
	load_lsps(lsps_config)
    end
}
