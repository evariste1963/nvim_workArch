-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
-- Simulated semi-transparent dark background for Neovim inside Alacritty

-- ============================================
-- Transparency + highlight setup
-- Works safely for both Alacritty and Neovide
-- ============================================

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- Only apply transparent backgrounds in the terminal
    if not vim.g.neovide then
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
      vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
      vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
    end
  end,
})

-- vim.api.nvim_create_autocmd("ColorScheme", {
--   callback = function()
--     local bg_color = "#1a1a1a" -- very dark gray (feels like ~0.9 opacity)
--     vim.api.nvim_set_hl(0, "Normal", { bg = bg_color })
--     vim.api.nvim_set_hl(0, "NormalNC", { bg = bg_color })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg_color })
--     vim.api.nvim_set_hl(0, "SignColumn", { bg = bg_color })
--     vim.api.nvim_set_hl(0, "LineNr", { bg = bg_color })
--     vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = bg_color })
--   end,
-- })
--
-- -- Apply immediately on startup (in case colorscheme already loaded)
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#1a1a1a" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1a1a1a" })
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
