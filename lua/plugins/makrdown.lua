return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = {
          on_attach = function(client, bufnr)
            vim.diagnostic.disable(bufnr)
          end,
        },
      },
    },
  },
}
