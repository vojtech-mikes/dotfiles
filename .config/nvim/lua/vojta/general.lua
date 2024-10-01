vim.g.have_nerd_font = true

vim.opt.relativenumber = true

vim.opt.mouse = 'a'

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.cursorline = true

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('vojtag', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
