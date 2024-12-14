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
Snacks.indent.disable()
require("toggleterm").setup {}
-- require("lsp_lines").setup {}
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
require("provider.clipboard.health").check()
-- vim.lsp.config.clangd {
--   cmd = {
--     "clangd",
--     "-j=" .. 2,
--     "--background-index",
--     "--clang-tidy",
--     "--inlay-hints",
--     "--fallback-style-llvm",
--     "--all-scopes-completion",
--     "--completion-style=detailed",
--     "--header-insertion=iwyu",
--     "--header-insertion-decorators",
--     "-pch-storage=memory"
--   },
--   filetypes = { "c", "cpp", "h", "hpp" },
--   root_markers = {
--     "CMakeLists.txt",
--     ".clangd",
--     ".clang-tidy",
--     ".clang-format",
--     "compile_commands.json",
--     "compile_flags.txt",
--     ".git",
--     "xmake.lua",
--     vim.uv.cwd(),
--   }
-- }
-- vim.lsp.enable("clangd")
