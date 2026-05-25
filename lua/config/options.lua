-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = true

vim.filetype.add({
  pattern = {
    ["docker%-compose%.y[a]?ml"] = "yaml.docker-compose",
    ["compose%.y[a]?ml"] = "yaml.docker-compose",
  },
})

vim.g.loaded_perl_provider = 0
