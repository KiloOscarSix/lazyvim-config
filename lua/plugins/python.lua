return {
  -- 1. LSP Configuration (from Desktop/HEAD)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "strict",
                diagnosticMode = "openFilesOnly",
              },
            },
          },
        },
        ruff = {},
      },
    },
  },

  -- 2. Formatter Configuration (from Laptop)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format" },
      },
    },
  },
}