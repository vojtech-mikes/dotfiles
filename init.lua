vim.loader.enable()

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = false

vim.o.relativenumber = true

vim.o.mouse = 'a'

vim.o.showmode = false

vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

vim.o.breakindent = true

vim.o.undofile = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = 'yes'

vim.o.updatetime = 250

vim.o.timeoutlen = 300

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.inccommand = 'split'

vim.o.cursorline = true

vim.o.scrolloff = 10

vim.o.confirm = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Packages
vim.pack.add({
	{ src = "https://github.com/stevearc/oil.nvim", name = "oil"},
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", name = "ts"},
	{ src = "https://github.com/nvim-mini/mini.nvim", name = "mini"}
})

require("oil").setup({
	view_options = {
		show_hidden = true
	}
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

grammars = {"python"}

require("nvim-treesitter").setup()
require("nvim-treesitter").install(grammars)

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})

vim.keymap.set("n", "<space>ec", "<CMD>e " .. vim.fn.stdpath("config") .. "/init.lua<CR>", { desc = "Open config file"})

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
	callback = function() vim.hl.on_yank() end,
})

myminis = {"mini.statusline", "mini.pairs", "mini.surround", "mini.cmdline"}

for i = 1, #myminis do
	require(myminis[i]).setup()
end
