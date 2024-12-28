-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Function to prompt the user for a compile command and execute it in a terminal
local function compile()
  vim.ui.input({ prompt = "Enter compile command: " }, function(input)
    if input and #input > 0 then
      vim.cmd("split | terminal " .. input)
    else
      vim.notify("No compile command provided.", vim.log.levels.WARN)
    end
  end)
end

-- Set up the keybinding directly in LazyVim's configuration
vim.keymap.set("n", "<leader>cC", compile, { noremap = true, silent = true, desc = "Compile project" })
