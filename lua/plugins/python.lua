return {
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
}
