-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
vim.o.termguicolors = true
-- Cursor behavior
vim.opt.guicursor = table.concat({
  "n:block", -- normal
  "v:block", -- visual
  "i:hor20-blinkon500-blinkoff500", -- insert = underline
}, ",")

-- Colors
vim.api.nvim_set_hl(0, "Cursor", {
  fg = "black",
  bg = "#ff0000", -- red (normal)
})

vim.api.nvim_set_hl(0, "CursorVisual", {
  fg = "black",
  bg = "#ff69b4", -- pink (visual)
})

vim.api.nvim_set_hl(0, "CursorInsert", {
  fg = "black",
  bg = "#ffffff", -- white (insert)
})
