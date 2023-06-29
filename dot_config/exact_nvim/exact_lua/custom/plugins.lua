---@type NvPluginSpec[]
local plugins = {

  -- override plugin configs
  require "custom.plugins.nvim-treesitter",
  require "custom.plugins.nvim-tree",
  require "custom.plugins.mason",

  -- additional plugins
  require "custom.plugins.better-escape",
  require "custom.plugins.cinnamon",
  require "custom.plugins.diffview",
  require "custom.plugins.hardtime",
  require "custom.plugins.leap",
  require "custom.plugins.mkdir",
  require "custom.plugins.symbols-outline",
  require "custom.plugins.trouble",
  require "custom.plugins.vim-illuminate",

}

return plugins
