---@type NvPluginSpec
return {
  "jghauser/mkdir.nvim",
  event = { "BufWritePre", "FileWritePre", "FileAppendPre" }
}
