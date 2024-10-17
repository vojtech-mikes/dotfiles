-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Custom stuff

config.font_size = 16
config.enable_tab_bar = false
config.window_background_opacity = 0.80

config.color_scheme = 'Gruber (base16)'

config.default_cursor_style = 'SteadyBlock'


-- and finally, return the configuration to wezterm
return config
