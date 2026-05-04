-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
vim.filetype.add({
  extension = {
    hbs = "html",
  },
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "text",
  callback = function(args)
    local bufnr = args.buf

    vim.diagnostic.config({
      virtual_text = false,
      signs = false,
      underline = false,
      update_in_insert = false,
    }, bufnr)

    vim.diagnostic.enable(false, { bufnr = bufnr })
  end,
})
-- Automatically change cwd to current buffer's directory
-- vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
--   callback = function()
--     local buf = vim.api.nvim_get_current_buf()
--     local buf_path = vim.api.nvim_buf_get_name(buf)
--     if buf_path ~= "" then
--       local buf_dir = vim.fn.fnamemodify(buf_path, ":p:h")
--       vim.cmd("lcd " .. buf_dir) -- local cwd per window
--       -- use `cd` instead if you want global cwd:
--       -- vim.cmd("cd " .. buf_dir)
--     end
--   end,
-- })
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
