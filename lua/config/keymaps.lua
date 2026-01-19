-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
-- local map = LazyVim.safe_keymap_set

map("n", "<leader>h", "<C-w>h", { desc = "Move back to filetree" })

map("n", "<leader>l", "<C-w>l", { desc = "Move back to buffer" })

-- Source - https://stackoverflow.com/a
-- Posted by Brotify Force, modified by community. See post 'Timeline' for change history
-- Retrieved 2026-01-07, License - CC BY-SA 4.0

map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

map("n", "<C-j>", "<Esc>:move +1<CR>==", { desc = "Move line DOWN" })
map("n", "<C-k>", "<Esc>:move -2<CR>==", { desc = "Move line UP" })
