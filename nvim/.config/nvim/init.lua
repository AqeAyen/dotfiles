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
-- require("lsp_lines").setup {}
require("oil").setup()
require 'lspconfig'.cmake.setup {}
-- vim.api.clipboard = "unnamedplus"
-- require 'lspconfig'.rust_analyzer.setup {}
-- local splash = {
--   "Hello, World",
--   "Welcome to Neovim",
--   "Folke is the GOAT",
--   "Lazyvim for the lazy",
-- }

-- math.randomseed()
-- require("notify")(splash[math.random(1, #splash)])
require("provider.clipboard.health").check()
require("catppuccin").setup {
  color_overrides = {
    all = {
      rosewater = "#f5e0dc",
      flamingo = "#f2cdcd",
      pink = "#ffbbed",
      mauve = "#cba6f7",
      red = "#f38ba8",
      maroon = "#eba0ac",
      peach = "#efb896",
      yellow = "#f9e2af",
      green = "#a6e3a1",
      teal = "#94e2d5",
      sky = "#89dceb",
      sapphire = "#74c7ec",
      blue = "#89b4fa",
      lavender = "#b9c0ea",
      text = "#cdd6f4",
      subtext1 = "#bac2de",
      subtext0 = "#a6adc8",
      overlay2 = "#9399b2",
      overlay1 = "#7f849c",
      overlay0 = "#6c7086",
      surface2 = "#585b70",
      surface1 = "#45475a",
      surface0 = "#313244",
      base = "#1e1e2e",
      mantle = "#181825",
      crust = "#11111b",
    },
  },
}
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

vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  group = vim.api.nvim_create_augroup("PragmaRegionFolding", { clear = true }),
  callback = function()
    vim.cmd([[
            syntax region PragmaRegion start="^\s*#pragma\sregion" end="^\s*#pragma\sendregion" fold
        ]])
  end,
})
