---@type NvPluginSpec
return {
  "declancm/cinnamon.nvim",
  opts = {
    extra_keymaps = true,
    default_delay = 1,
    max_length = 50,
    scroll_limit = -1,
  },
  event = { "CursorMoved", "WinScrolled" },
}
