-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local key = LazyVim.safe_keymap_set

key("n", "<C-a>", "gg<S-v>G")
vim.api.nvim_set_keymap("n", ";", ":", { noremap = true, silent = false })
-- Add any additional keymaps here
