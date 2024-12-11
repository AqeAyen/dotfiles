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

      -- open the split window terminal viewer
      vim.keymap.set('n', "<leader>ps", projectlaunch.toggle_split,
        { noremap = true, expr = false, buffer = false, desc = "open the split window terminal" })

      -- show the next or previous terminals in the open viewer
      vim.keymap.set('n', "<leader>pn", projectlaunch.show_next,
        { noremap = true, expr = false, buffer = false, desc = "show the next terminal" })
      vim.keymap.set('n', "<leader>pm", projectlaunch.show_prev,
        { noremap = true, expr = false, buffer = false, desc = "show the previous terminal" })

      -- restart the command running in the currently open split terminal
      vim.keymap.set('n', "<leader>pr", projectlaunch.restart_command_in_split,
        { noremap = true, expr = false, buffer = false, desc = "restart the command in the split terminal" })
    end
  }
}
