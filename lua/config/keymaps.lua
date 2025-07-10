-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- vim.api.nvim_set_keymap("v", "<leader>y", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fp", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fh", ":Telescope find_files hidden=true<CR>", { noremap = true, silent = true })
