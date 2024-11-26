return {
  {
    "EL-MASTOR/bufferlist.nvim",
    lazy = false,
    keys = { { "<Leader>b", desc = "Open bufferlist" } }, -- keymap to load the plugin, it should be the same as keymap.open_buflist
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      keymaps = {
        open_bufferlist = "<leader> bL"
      }
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  }
}
