return {
    "neovim/nvim-lspconfig",
    dependencies = {
	{
	    "williamboman/mason.nvim",
	    opts = {}
	},
	{
	    "folke/lazydev.nvim",
	    ft = "lua", -- only load on lua files
	    enabled = true,
	    opts = {
		library = {
		    -- See the configuration section for more details
		    -- Load luvit types when the `vim.uv` word is found
		    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
		},
	    },
	},
	{
	    "saghen/blink.cmp"
	}
    },
    config = function()
	local config = require("lspconfig")
	local servers = {
	    pyright = {},
	    lua_ls = {}
	}

	for server, opts in pairs(servers) do
	    local capabilities = require("blink.cmp").get_lsp_capabilities(opts.capabilities)
	    config[server].setup { capabilities = capabilities}
	end
    end
}
