vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end
--vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/lua_snippets"
vim.opt.rtp:prepend(lazypath)
--//bufwritepost
-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
-- command = "FormatWriteLock",
-- })
local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
    config = function()
      require "options"
    end,
  },

  { import = "plugins" },
}, lazy_config)
require("neodev").setup {
  -- add any options here, or leave empty to use the default settings
}
-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")
require("mason").setup()
require "nvchad.autocmds"
require("mason-nvim-dap").setup {
  ensure_installed = { "codelldb", "firefox" },
  handlers = {}, -- sets up dap in the predefined manner
}
vim.schedule(function()
  require "mappings"
end)
