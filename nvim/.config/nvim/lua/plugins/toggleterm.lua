return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      {
        "<leader>td",
        "<cmd>ToggleTerm size = 40 dir=~/ direction=horizontal<cr>",
        desc = "Terminal cool",
      },
      {
        "<leader>tf",
        "<cmd>ToggleTerm size = 70 dir~/ direction=float<cr>",
        desc = "float",
      },
    },
  },
}
