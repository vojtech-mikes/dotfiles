local set = vim.opt

set.number = true
set.relativenumber = true

set.shiftwidth = 4

set.clipboard = "unnamedplus"

set.cursorline = false

set.showmode = false

set.ignorecase = true

set.smartcase = true

set.inccommand = 'split'

set.scrolloff = 10

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	callback = function()
		vim.highlight.on_yank()
	end,
})
