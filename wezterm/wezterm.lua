local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- Color scheme

config.color_scheme = "Catppuccin Mocha"
-- config.color_scheme = "Tokyo Night"
-- config.color_scheme = 'Gruvbox Material (Gogh)'
-- config.color_scheme = "Gruvbox Dark (Gogh)"
-- config.color_scheme = "Nord (Gogh)"

-- Other

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_padding = {
	left = 10,
	right = 10,
	top = 10,
	bottom = 10,
}

-- Background

config.window_background_opacity = 0.95
config.macos_window_background_blur = 10

-- Font

config.font = wezterm.font("CaskaydiaMono Nerd Font")
-- config.font = wezterm.font("Firacode Nerd Font")
config.font_size = 13.0

-- Foreground
-- This is used to make my foreground (text, etc) brighter than my background
config.foreground_text_hsb = {
	hue = 1.0,
	saturation = 1.0,
	brightness = 0.9,
}

return config
