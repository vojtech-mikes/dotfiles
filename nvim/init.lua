vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.showmode = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.cursorline = true
vim.opt.scrolloff = 10

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{	
		"nvim-treesitter/nvim-treesitter", 
		build = ":TSUpdate"
	},
	{
		"rose-pine/neovim", 
		name = "rose-pine",
		lazy = false,
		priority = 1000
	}
}

require("lazy").setup(plugins)

vim.cmd[[colorscheme rose-pine]]

require("lualine").setup {
	options = {
		theme = "16color"
	}
}

require("nvim-treesitter.configs").setup {
	ensure_installed = {"lua"},
	sync_install = false,
	auto_install = false,
	highlight = { enable = true },
	indent = { enable = true },
}


