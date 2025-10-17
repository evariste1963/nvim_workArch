-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = true
vim.opt.scrolloff = 999 -- keeps cursor in center of screnn vertically

-- ============================================
-- Neovide-specific configuration (updated)
-- ============================================

if vim.g.neovide then
  -- Only set opacity; leave everything else as-is
  vim.g.neovide_opacity = 0.9

  -- Optional: allow your colorscheme to show through
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

  -- Only set font if you want to override your default
  -- vim.o.guifont = "JetBrainsMono Nerd Font:h14"

  -- Optional: enable cursor animation only if desired
  -- vim.g.neovide_cursor_vfx_mode = "railgun"
end

-- Load Neovide settings
pcall(require, "config.neovide")
