return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      local toggleterm = require("toggleterm")
      toggleterm.setup({
        direction = "float",
        start_in_insert = true, -- always start in insert mode
        float_opts = {
          width = function()
            return vim.o.columns
          end,
          height = function()
            return vim.o.lines - 1
          end,
          winblend = 0,
        },
        open_mapping = false, -- we use custom mapping
      })

      local key = vim.keymap.set

      -- toggle terminal (always enter insert mode)
      local function toggle_term()
        vim.cmd("ToggleTerm")
        vim.cmd("startinsert")
      end

      -- keymaps
      key("n", "<C-_>", toggle_term)
      key("i", "<C-_>", toggle_term)
      key("t", "<C-_>", toggle_term)

      -- allow exiting terminal mode with Esc or Ctrl-C
      key("t", "<Esc>", [[<C-\><C-n>]])
      key("t", "<C-c>", [[<C-\><C-n>]])

      -- auto-insert when terminal opens
      vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "*",
        callback = function()
          vim.cmd("startinsert")
        end,
      })
    end,
  },
}
