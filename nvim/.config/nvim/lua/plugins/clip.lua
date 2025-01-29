return {
  "https://github.com/EtiamNullam/deferred-clipboard.nvim.git",
  config = function()
    require("deferred-clipboard").setup({
      fallback = "unnamedplus", -- or your preferred setting for clipboard
    })
  end,
}
