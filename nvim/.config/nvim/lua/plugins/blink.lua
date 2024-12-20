return {
	'saghen/blink.cmp',
	-- optional: provides snippets for the snippet source
	dependencies = 'rafamadriz/friendly-snippets',

	version = 'v0.*',
	opts = {
		keymap = { preset = 'default' },

		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = 'mono'
		},

		-- elsewhere in your config, without redefining it, due to `opts_extend`
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},

	},
	-- allows extending the providers array elsewhere in your config
	-- without having to redefine it
	opts_extend = { "sources.default" }
}
