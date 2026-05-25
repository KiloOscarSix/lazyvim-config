return {
  -- Treesitter SQL highlighting (PostgreSQL compatible)
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    opts = {
      ensure_installed = { "sql" },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },

  -- SQL LSP
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local lspconfig = require("lspconfig")
      lspconfig.sqls.setup({
        settings = {
          sqls = {
            connections = {
              {
                driver = "postgresql",
                dataSourceName = "user=YOUR_USER password=YOUR_PASS host=localhost port=5432 dbname=YOUR_DB sslmode=disable",
              },
            },
          },
        },
      })
    end,
  },

  -- SQL Snippets
  {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
  },
  {
    "rafamadriz/friendly-snippets",
    event = "InsertEnter",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },

  -- Execute SQL queries with Dadbod
  {
    "kristijanhusak/vim-dadbod",
    ft = "sql",
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = { "vim-dadbod" },
    ft = "sql",
  },

  -- SQL formatting using mhartington/formatter.nvim
  {
    "mhartington/formatter.nvim",
    ft = "sql",
    config = function()
      require("formatter").setup({
        filetype = {
          sql = {
            function()
              return {
                exe = "pg_format",
                args = { "-s", "2", "-g" },
                stdin = true,
              }
            end,
          },
        },
      })
    end,
  },
}
