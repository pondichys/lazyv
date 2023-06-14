-- Configure yamlls
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      yamlls = {
        settings = {
          yamll = {
            keyOrdering = false,
          },
        },
      },
    },
  },
  -- YAML formatting
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local nlb = require("null-ls.builtins")
      vim.list_extend(opts.sources, { nlb.formatting.yamlfmt })
    end,
  },
}
