-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local key = LazyVim.safe_keymap_set

key("n", "<C-a>", "gg<S-v>G")
key("n", ";", ":", { noremap = true, silent = false })
--key("n", "<leader>t", ":terminal<CR>")
-- Add any additional keymaps here
-- vim.keymap.set("n", "<C-_>", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
-- vim.keymap.set("t", "<C-_>", [[<C-\><C-n><cmd>ToggleTerm<CR>]], { desc = "Toggle Terminal" })

key("n", "<C-_>", "<cmd>ToggleTerm<CR><cmd>startinsert<CR>")
key("i", "<C-_>", "<Esc><cmd>ToggleTerm<CR><cmd>startinsert<CR>")
key("t", "<C-_>", [[<C-\><C-n><cmd>ToggleTerm<CR><cmd>startinsert<CR>]])
