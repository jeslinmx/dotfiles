---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },
  transparency = true,

  cmp = {
    style = "atom_colored",
    lspkind_text = false,
    selected_item_bg = "colored",
  },

  statusline = {
    theme = "vscode_colored",
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

-- Path to overriding theme and highlights files
M.ui.hl_override = require "custom.highlights".override
M.ui.hl_add = require "custom.highlights".add

return M
