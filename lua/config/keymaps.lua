-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
-- local map = LazyVim.safe_keymap_set

map("n", "<leader>h", "<C-w>h", { desc = "Move back to filetree" })

map("n", "<leader>l", "<C-w>l", { desc = "Move back to buffer" })
