-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Custom stuff

config.font_size = 14

-- and finally, return the configuration to wezterm
return config
