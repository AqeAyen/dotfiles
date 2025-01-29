return {
  {
    "Dan7h3x/LazyDo",
    branch = "main",
    events = "VeryLazy",
    opts = {
      -- your config here
    },
    config = function(_, opts)
      require("lazydo").setup(opts)
    end,
  },
}
