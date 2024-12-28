-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set('n', '<leader>uU', '<cmd>u<CR>', { desc = "undo" })
-- vim.keymap.set('n', '<leader>uR', '<c-r>', { desc = "Redo" })
vim.keymap.set("", "<up>", "<nop>", { noremap = true })
vim.keymap.set("", "<down>", "<nop>", { noremap = true })
vim.keymap.set("i", "<up>", "<nop>", { noremap = true })
vim.keymap.set("i", "<down>", "<nop>", { noremap = true })

vim.opt.mouse = ""
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>fF", "<cmd>Telescope frecency<cr>", { desc = "telescope frecency" })
vim.keymap.set("n", "<leader>uT", "<cmd>UndotreeToggle<cr>", { desc = "undotree toggle" })
vim.keymap.set("n", "<leader>sc", '<cmd>lua require("cheat-sh").search()<cr>')
vim.keymap.set("n", "<leader>sx", '<cmd>lua require("cheat-sh").get_cursor_word(true)<cr>')
-- get_cursor_word(true) will open the search window so you can edit the query
-- without or set to false will run the search on cursor word
vim.keymap.set("n", "<leader>gg", function()
  require("lazygit-confirm").confirm()
end, { noremap = true })
