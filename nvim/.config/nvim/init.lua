-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require 'lspconfig'.clangd.setup {
  vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = true,
  }),
}
require('mini.animate').setup()
require("toggleterm").setup {}
require("lsp_lines").setup {}
require("oil").setup()
require 'lspconfig'.cmake.setup {}
vim.api.clipboard = "unnamedplus"
require 'lspconfig'.rust_analyzer.setup {}
local splash = {
  "Hello, World",
  "Welcome to Neovim",
  "Folke is the GOAT",
  "Lazyvim for the lazy",
}

math.randomseed()
require("notify")(splash[math.random(1, #splash)])
