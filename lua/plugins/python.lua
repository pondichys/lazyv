-- Configurations to develop in Python
return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      table.insert(opts.sources, nls.builtins.formatting.black)
    end,
  },
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruff_lsp = {
        init_options = {
          settings = {
            args = { "--max-line-length=180" },
          },
        },
      },
    },
  },
}
