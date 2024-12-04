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
