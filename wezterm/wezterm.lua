local wezterm = require 'wezterm';
-- local terminal_font = wezterm.font("MesloLGSDZ Nerd Font Mono")
local font = wezterm.font_with_fallback({"FiraCode Nerd Font", "JetBrains Mono", "Hack Nerd Font", "IBM Plex Mono", "FuraCode Nerd Font Retina", "Apple Symbols", "Arial Unicode MS", "BlexMono Nerd Font"})
local act = wezterm.action
local leader_key = {
    key = 'x',
    mods = 'CTRL',
    timeout_milliseconds = 1000,
}

window_decorations = "TITLE"
local config = wezterm.config_builder()
-- The filled in variant of the < symbol
local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider

-- The filled in variant of the > symbol
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

local keymap = {
    -- tab and pane management
    {
        key = 'c',
        mods = 'LEADER',
        action = wezterm.action.SpawnTab 'CurrentPaneDomain',
    },
    {
    key = 'f',
    mods = 'LEADER',
    action = act.Search { CaseInSensitiveString = 'hash' },
    },
    { key = '1', mods = 'LEADER', action = act.ActivateTab(0) },
    { key = '2', mods = 'LEADER', action = act.ActivateTab(1) },
    { key = '3', mods = 'LEADER', action = act.ActivateTab(2) },
    { key = '4', mods = 'LEADER', action = act.ActivateTab(3) },
    { key = '5', mods = 'LEADER', action = act.ActivateTab(4) },
    { key = '6', mods = 'LEADER', action = act.ActivateTab(5) },
    { key = '7', mods = 'LEADER', action = act.ActivateTab(6) },
    { key = '8', mods = 'LEADER', action = act.ActivateTab(7) },
    { key = '9', mods = 'LEADER', action = act.ActivateTab(8) },
    { key = '0', mods = 'LEADER', action = act.ActivateTab(9) },
    -- Compare this with the older syntax shown in the section below
    { key = '[', mods = 'LEADER', action = act.ActivateTabRelative(-1) },
    { key = ']', mods = 'LEADER', action = act.ActivateTabRelative(1) },

    {
        key = 'H',
        mods = 'LEADER',
        action = act.AdjustPaneSize { 'Left', 5 },
    },
    {
        key = 'J',
        mods = 'LEADER',
        action = act.AdjustPaneSize { 'Down', 5 },
    },
    { key = 'K', mods = 'LEADER', action = act.AdjustPaneSize { 'Up', 5 } },
    {
        key = 'L',
        mods = 'LEADER',
        action = act.AdjustPaneSize { 'Right', 5 },
    },
  {
    key = 'b',
        mods = 'LEADER',
    action = act.RotatePanes 'CounterClockwise',
  },
  { key = 'n', mods = 'CTRL', action = act.RotatePanes 'Clockwise' },
    {
        key = 'C',
        mods = 'LEADER|SHIFT',
        action = wezterm.action.SpawnTab 'DefaultDomain',
    },
    {
        key = '\\',
        mods = 'LEADER',
        action = wezterm.action.SplitHorizontal {
            domain = 'CurrentPaneDomain',
        },
    },
    {
        key = '-',
        mods = 'LEADER',
        action = wezterm.action.SplitVertical {
            domain = 'CurrentPaneDomain',
        },
    },
    -- tab and pane navigation
    {
        key = 'l',
        mods = 'LEADER',
        action = wezterm.action.ActivatePaneDirection 'Right',
    },
    {
        key = 'h',
        mods = 'LEADER',
        action = wezterm.action.ActivatePaneDirection 'Left',
    },
    {
        key = 'j',
        mods = 'LEADER',
        action = wezterm.action.ActivatePaneDirection 'Down',
    },
    {
        key = 'k',
        mods = 'LEADER',
        action = wezterm.action.ActivatePaneDirection 'Up',
    },
    -- session controls
    {
        key = 'r',
        mods = 'LEADER',
        action = wezterm.action.ReloadConfiguration,
    },
    {
    key = 'x',
    mods = 'LEADER',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
    {
    key = 'z',
    mods = 'LEADER',
    action = wezterm.action.TogglePaneZoomState,
  },
}
local mocha = {
   rosewater = '#f5e0dc',
   flamingo = '#f2cdcd',
   pink = '#f5c2e7',
   mauve = '#cba6f7',
   red = '#f38ba8',
   maroon = '#eba0ac',
   peach = '#fab387',
   yellow = '#f9e2af',
   green = '#a6e3a1',
   teal = '#94e2d5',
   sky = '#89dceb',
   sapphire = '#74c7ec',
   blue = '#89b4fa',
   lavender = '#b4befe',
   text = '#cdd6f4',
   subtext1 = '#bac2de',
   subtext0 = '#a6adc8',
   overlay2 = '#9399b2',
   overlay1 = '#7f849c',
   overlay0 = '#6c7086',
   surface2 = '#585b70',
   surface1 = '#45475a',
   surface0 = '#313244',
   base = '#1f1f28',
   mantle = '#181825',
   crust = '#11111b',
}

local config = {
    audible_bell = 'Disabled',
    color_scheme = 'Argonaut (Gogh)',
    -- color_scheme = 'Hardcore',
    -- color_scheme = 'Apprentice (Gogh)',
    -- color_scheme = 'Ashes (light) (terminal.sexy)',
    keys = keymap,
    leader = leader_key,
    set_environment_variables = {
        COLORTERM = 'truecolor',
    },
    term = "xterm-256color",
    window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
    },
    foreground_text_hsb = {
      brightness = 1.9,
    },
    enable_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true,
    tab_max_width = 105,
    show_tab_index_in_tab_bar = false,
    switch_to_last_active_tab_when_closing_tab = true,
    window_background_opacity = 0.85,
    default_cursor_style = 'BlinkingBar',
    window_decorations = "RESIZE",
    macos_window_background_blur = 20,
    scrollback_lines = 3500000,
    show_update_window = false,
    check_for_updates = false,
    check_for_updates_interval_seconds = 300000000000,
    window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  -- font = wezterm.font { family = 'Roboto', weight = 'Bold' },
  -- The size of the font in the tab bar.
  -- Default to 10.0 on Windows but 12.0 on other systems
    font_size = 20.0,

  -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = '#333333',

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#333333',
    }
}
local bar = wezterm.plugin.require("/home/akuma/.config/wezterm/plugins/bar_wezterm")
bar.apply_to_config(config, {
        dividers = "slant_right"
    })
return config
