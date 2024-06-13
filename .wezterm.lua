local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Hardcore'
config.font_size = 12

config.keys = {
	{
		key = 't',
		mods = 'SHIFT|ALT',
		action = wezterm.action.SpawnTab 'CurrentPaneDomain',
	},
	{
		key = '"',
		mods = 'SHIFT|ALT',
		action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
	},
	{
		key = '%',
		mods = 'SHIFT|ALT',
		action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }
	}
}

return config
