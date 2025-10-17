-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd('cnoreabbrev <expr> qas (getcmdtype() == ":" && getcmdline() == "qas") ? "qa!" : "qas"') -- use qas instead of qa!, which is a real pain!.

vim.cmd('cnoreabbrev <expr> qs (getcmdtype() == ":" && getcmdline() == "qs") ? "q!" : "qs"') -- use qa instead of q!, which is a real pain!.

if vim.g.neovide then
  vim.o.guifont = "CaskaydiaMono Nerd Font:h9" -- matches Alacritty font
  vim.g.neovide_opacity = 0.8 -- slightly more opaque than 0.7
  vim.g.neovide_padding_top = 14
  vim.g.neovide_padding_bottom = 14
  vim.g.neovide_padding_right = 14
  vim.g.neovide_padding_left = 14
  vim.g.neovide_fullscreen = false -- default fullscreen off
  -- vim.keymap.set("n", "<F11>", function()
  --   vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen
  -- end, { noremap = true, silent = true })
end
