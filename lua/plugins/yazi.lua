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
    opts = {
      layout = "float",
      floating_window_scaling_factor = 1, -- full size
      yazi_floating_window_border = "none", -- no border
      yazi_floating_window_winblend = 0, -- optional transparency
      yazi_floating_window_zindex = 50, -- top layer
      auto_open = false,

      hooks = {
        before_opening_window = function(window_options)
          -- Force window to top-left
          window_options.row = 0
          window_options.col = 0
          window_options.width = vim.o.columns
          window_options.height = vim.o.lines
        end,
      },
    },
  },
}
