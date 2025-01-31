return {
  'comfysage/evergarden',
  priority = 1000,
  opts = {
    transparent_background = true,
    variant = 'hard',
    overrides = { },
  },
  config = function ()
    vim.cmd.colorscheme "evergarden"
  end
}
