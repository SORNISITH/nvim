return {
  {
    "craftzdog/solarized-osaka.nvim",
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "solarized-osaka",
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      },
    },
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "",
  --   },
  -- },

  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "gruvbox",
  --   },
  -- },
}
