return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  {
    "mikavilpas/yazi.nvim",
    keys = {
      {
        "<leader>v",
        "<cmd>Yazi<CR>",
        desc = "Open Yazi file manager",
      },
    },
    config = function()
      require("yazi").setup({
        layout = "float",
        window = {
          border = "none", -- no border
          width = vim.o.columns, -- full width
          height = vim.o.lines, -- full height
          row = 0, -- top-left corner
          col = 0,
          winblend = 0, -- optional: transparency
        },
        auto_open = false,
      })
    end,
  },
}
