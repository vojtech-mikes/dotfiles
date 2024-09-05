vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.relativenumber = true

vim.opt.mouse = 'a'

vim.opt.breakindent = true

vim.opt.cursorline = true

vim.opt.scrolloff = 10

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 250

vim.opt.timeoutlen = 300

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('custom-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
