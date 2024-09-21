-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby

local key = LazyVim.safe_keymap_set

-- Add any additional keymaps
--
key("n", "<C-a>", "gg<S-v>G")
