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
			'williamboman/mason.nvim',
			opts = {}
		},
		{
			'saghen/blink.cmp'
		}
	},
	config = function()
		local capabilities = require('blink.cmp').get_lsp_capabilities()

		local servers = {
			"lua_ls",
			"pyright"
		}

		for i = 1, #servers do
			local lsp = require 'lspconfig'[servers[i]]

			if lsp then
				lsp.setup { capabilities = capabilities }
			end
		end

		-- https://neovim.io/doc/user/lsp.html#lsp-config
		vim.api.nvim_create_autocmd('LspAttach', {
			callback = function(args)
				local client = vim.lsp.get_client_by_id(args.data.client_id)

				if not client then
					return
				end

				if client.supports_method('textDocument/rename') then
					vim.keymap.set("n", "rn", vim.lsp.buf.rename)
				end

				if client.supports_method('textDocument/diagnostics') then
					vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
				end

				if client.supports_method('textDocument/definition') then
					vim.keymap.set("n", 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
				end

				if client.supports_method('textDocument/formatting') then
					-- Format the current buffer on save
					vim.api.nvim_create_autocmd('BufWritePre', {
						buffer = args.buf,
						callback = function()
							vim.lsp.buf.format({ bufnr = buffer, id = client.id })
						end,
					})
				end
			end,
		})
	end
}
