return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      local toggleterm = require("toggleterm")
      toggleterm.setup({
        start_in_insert = true, -- only on first open
        open_mapping = false, -- custom mapping
        direction = "float",
        float_opts = {
          border = "none",
          width = function()
            return vim.o.columns
          end,
          height = function()
            return vim.o.lines - 1
          end,
          winblend = 0,
        },
      })

      local key = vim.keymap.set

      -- Normal toggle function (does not force insert every time)
      local function toggle_term()
        vim.cmd("ToggleTerm")
      end

      -- Keymaps
      key("n", "<C-_>", toggle_term)
      key("i", "<C-_>", function()
        vim.cmd("stopinsert")
        toggle_term()
      end)
      key("t", "<C-_>", toggle_term)

      -- Terminal mode: go to normal mode
      key("t", "<Esc>", [[<C-\><C-n>]], { desc = "Terminal Normal Mode" })
      key("t", "<C-n>", [[<C-\><C-n>]], { desc = "Terminal Normal Mode" })
    end,
  },
}
