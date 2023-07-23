-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local c = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  c = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- COLORS --

c.color_scheme = 'Catppuccin Mocha'
local colors = wezterm.color.get_builtin_schemes()[c.color_scheme]
c.colors = {
  split = colors['selection_bg'],
  tab_bar = {
    active_tab = {
      bg_color = colors['background'],
      fg_color = colors['brights'][5],
      intensity = 'Bold',
    },
    inactive_tab = {
      bg_color = colors['background'],
      fg_color = colors['brights'][5],
      italic = true,
    },
  },
}

-- FONTS --

c.font = wezterm.font_with_fallback {
  -- 'CozetteHiDpi',
  'CaskaydiaCove Nerd Font',
}
c.font_size = 8.3
c.font_rules = {
  {
    intensity = 'Bold',
    font = wezterm.font_with_fallback {
      {
        family = 'CaskaydiaCove Nerd Font',
        weight = 'Bold',
      }
    }
  },
  {
    italic = true,
    font = wezterm.font_with_fallback {
      {
        family = 'CaskaydiaCove Nerd Font',
        style = 'Italic',
      }
    }
  },
}

-- TABS --

c.use_fancy_tab_bar = false
c.tab_max_width = 50
c.switch_to_last_active_tab_when_closing_tab = true
c.hide_tab_bar_if_only_one_tab = true

-- PANES --

c.inactive_pane_hsb = {
  saturation = 0.7,
  brightness = 0.2
}

-- WINDOW --

c.window_decorations = 'RESIZE'
c.tab_bar_style = {
  window_hide = ' - ',
  window_hide_hover = wezterm.format {
    { Background = { Color = colors['ansi'][3] } },
    { Foreground = { Color = colors['background'] } },
    { Text = ' - ' },
  },
  window_maximize = ' + ',
  window_maximize_hover = wezterm.format {
    { Background = { Color = colors['ansi'][4] } },
    { Foreground = { Color = colors['background'] } },
    { Text = ' + ' },
  },
  window_close = ' × ',
  window_close_hover = wezterm.format {
    { Background = { Color = colors['ansi'][2] } },
    { Foreground = { Color = colors['background'] } },
    { Text = ' × ' },
  },
}
c.enable_scroll_bar = true

-- OTHER --

c.audible_bell = 'Disabled'
c.automatically_reload_config = true

-- and finally, return the configuration to wezterm
return c
