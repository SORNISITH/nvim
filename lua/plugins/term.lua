return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      local toggleterm = require("toggleterm")
      toggleterm.setup({
        open_mapping = false, -- custom mapping
        direction = "float",
        float_opts = {
          width = function()
            return vim.o.columns
          end, -- full width
          height = function()
            return vim.o.lines - 1
          end, -- full height minus command line
          winblend = 0, -- transparency 0%
        },
      })

      local key = vim.keymap.set

      -- toggle terminal function (always insert)
      local function toggle_term()
        vim.cmd("ToggleTerm")
        vim.cmd("startinsert")
      end

      -- keymaps
      key("n", "<C-_>", toggle_term)
      key("i", "<C-_>", function()
        vim.cmd("stopinsert")
        toggle_term()
      end)
      key("t", "<C-_>", function()
        vim.cmd("ToggleTerm")
        vim.cmd("startinsert")
      end)

      -- auto-insert for all terminals
      vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "*",
        callback = function()
          vim.cmd("startinsert")
        end,
      })
    end,
  },
}
