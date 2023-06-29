-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

vim.opt.relativenumber = true -- enable relative line numbers
vim.opt.so = 999              -- vertically centre cursor whenever possible

vim.opt.wrap = false          -- disable line wrapping

vim.opt.list = true           -- display non-space whitespace characters
vim.opt.listchars:append({  -- set characters used to substitute whitespace
  tab = "-->",
  trail = "·",
  nbsp = "⍽",
  extends = ">",            -- indicator for right-side horizontal overflow
  precedes = "<",           -- indicator for left-side horizontal overflow
})

vim.opt.cursorline = true     -- highlight active line
vim.opt.cursorcolumn = true   -- highlight active column
