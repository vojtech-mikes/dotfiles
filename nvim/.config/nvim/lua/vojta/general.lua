vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.showmode = false
vim.g.have_nerd_font = true


vim.opt.laststatus = 3

vim.opt.fillchars:append {
  vert = '│',   -- Vertical line
  horiz = '─',  -- Horizontal line
  horizup = '┴',
  horizdown = '┬',
  vertleft = '┤',
  vertright = '├',
  verthoriz = '┼',
}


vim.api.nvim_set_hl(0, "WinSeparator", { fg = "white", bg = "none" })
