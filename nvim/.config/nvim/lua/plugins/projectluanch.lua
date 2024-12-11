return {
  {
    "https://github.com/sheodox/projectlaunch.nvim.git",
    config = function()
      local projectlaunch = require('projectlaunch')
      vim.keymap.set('n', "<leader>pl", projectlaunch.toggle_main_menu,
        { noremap = true, expr = false, buffer = false, desc = "Open the main menu" })

      -- open the floating window terminal viewer
      vim.keymap.set('n', "<leader>pf", projectlaunch.toggle_float,
        { noremap = true, expr = false, buffer = false, desc = "Open the floating window" })
    end
  }
}
