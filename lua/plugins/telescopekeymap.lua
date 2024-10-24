return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader><leader>", LazyVim.pick("files"), desc = "Find Files (cwd)" },
    },
    opts = function(_, opts)
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        defaults = {
          -- Set ignore patterns for file search
          file_ignore_patterns = { "node_modules" },
          mappings = {
            i = {
              ["<C-u>"] = false,
              ["<C-d>"] = false,
              -- Additional mappings here
            },
          },
        },
      })
    end,
  },
}
