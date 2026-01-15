local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- General
config.font = wezterm.font("BlexMono Nerd Font Mono")
config.font_size = 14
config.color_scheme = "Solarized Light"
config.line_height = 1.2
config.color_scheme = "tokyonight_night"

config.colors = {
	cursor_bg = "#7aa2f7",
	cursor_border = "#7aa2f7",
}

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.95

-- Keybindings
local act = wezterm.action
config.keys = {
	{ key = "w", mods = "CMD|SHIFT", action = act.CloseCurrentTab({ confirm = false }) },
	{ key = "k", mods = "CMD", action = act.SendString("clear\n") },

	-- Pane Actions
	{ key = "d", mods = "CMD", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "d", mods = "CMD|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "w", mods = "CMD", action = act.CloseCurrentPane({ confirm = false }) },

	{ key = "F1", mods = "ALT", action = act.ActivatePaneByIndex(0) },
	{ key = "F2", mods = "ALT", action = act.ActivatePaneByIndex(1) },
	{ key = "F3", mods = "ALT", action = act.ActivatePaneByIndex(2) },
	{ key = "F4", mods = "ALT", action = act.ActivatePaneByIndex(3) },
	{ key = "F5", mods = "ALT", action = act.ActivatePaneByIndex(4) },
	{ key = "F6", mods = "ALT", action = act.ActivatePaneByIndex(5) },
	{ key = "F7", mods = "ALT", action = act.ActivatePaneByIndex(6) },
	{ key = "F8", mods = "ALT", action = act.ActivatePaneByIndex(7) },
	{ key = "F9", mods = "ALT", action = act.ActivatePaneByIndex(8) },
	{ key = "F10", mods = "ALT", action = act.ActivatePaneByIndex(9) },
}

return config

