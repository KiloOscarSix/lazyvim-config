return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              inlayHints = {
                enable = true,
                typeHints = {
                  enable = true,
                },
                parameterHints = {
                  enable = true,
                },
              },
            },
          },
        },
      },
    },
  },
}
