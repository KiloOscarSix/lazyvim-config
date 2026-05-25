return {
  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "dart",
      },
    },
  },

  -- Conform
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        dart = { "dart_format" },
      },
    },
  },

  -- Debugger
  {
    "mfussenegger/nvim-dap",
  },

  -- Flutter
  {
    "akinsho/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    opts = {
      lsp = {},
    },
  },
}
