-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Function to prompt the user for a compile command and execute it in a terminal
-- Function to prompt the user for a compile command and execute it in a terminal
-- Function to find the root directory
local function get_root_dir()
  -- Use Neovim's LSP to find the root, or fallback to searching for a `.git` folder
  local lsp_clients = vim.lsp.get_active_clients()
  if #lsp_clients > 0 and lsp_clients[1].config.root_dir then
    return lsp_clients[1].config.root_dir
  else
    -- Fallback: Search upward for `.git` or a known root marker
    local root = vim.fn.finddir(".git", ";")
    if root ~= "" then
      return vim.fn.fnamemodify(root, ":h")
    end
    return vim.fn.getcwd() -- Default to current working directory if no root is found
  end
end

-- Function to run the compile command in the specified directory
local function compile_in_directory(directory)
  vim.ui.input({ prompt = "Enter compile command: " }, function(input)
    if input and #input > 0 then
      -- Change the working directory of the terminal to the specified directory
      vim.cmd("lcd " .. directory)
      -- Open a terminal and execute the compile command
      vim.cmd("split | terminal " .. input)
    else
      vim.notify("No compile command provided.", vim.log.levels.WARN)
    end
  end)
end

-- Function to compile in the root directory
local function compile_in_root()
  local root_dir = get_root_dir()
  compile_in_directory(root_dir)
end

-- Function to compile in the current working directory
local function compile_in_cwd()
  local cwd = vim.fn.getcwd()
  compile_in_directory(cwd)
end

-- Keybindings for both options
vim.keymap.set(
  "n",
  "<leader>cC",
  compile_in_root,
  { noremap = true, silent = true, desc = "Compile in root directory" }
)
vim.keymap.set(
  "n",
  "<leader>cc",
  compile_in_cwd,
  { noremap = true, silent = true, desc = "Compile in current directory" }
)
