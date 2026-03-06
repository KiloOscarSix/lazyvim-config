return {
  -- 1. Configure LSP (sqls)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sqls = {
          -- This is a LazyVim specific flag to disable formatting for this server
          formatting = false,
          on_attach = function(client, bufnr)
            -- Double-check: force-disable formatting capabilities
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentRangeFormattingProvider = false
          end,
        },
      },
    },
  },

  -- 2. Configure Formatter (sqlfluff)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- Only use sqlfluff, no fallbacks
        sql = { "sqlfluff" },
      },
      format_on_save = {
        -- Ensure we NEVER fall back to the LSP (sqls)
        lsp_fallback = false,
        timeout_ms = 1000,
      },
      formatters = {
        sqlfluff = {
          cwd = require("conform.util").root_file({ ".git", ".sqlfluff", "package.json" }),
          require_cwd = false,
          args = { "format", "--dialect", "postgres", "-" },
        },
      },
    },
  },
}
