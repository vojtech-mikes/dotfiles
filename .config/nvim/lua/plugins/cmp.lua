return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-buffer'
	},
	config = function()
		local cmp = require 'cmp'
		cmp.setup {
			sources = {
				{ name = 'buffer'},
				{ name = 'path' }
			}
		}
		mapping = cmp.mapping.preset.insert {
			['<C-n>'] = cmp.mapping.select_next_item(),
			['<C-p>'] = cmp.mapping.select_prev_item(),
			['<C-b>'] = cmp.mapping.scroll_docs(-4),
			['<C-f>'] = cmp.mapping.scroll_docs(4),
			['<C-y>'] = cmp.mapping.confirm { select = true }
		}
	end
}
