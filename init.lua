-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd('cnoreabbrev <expr> qas (getcmdtype() == ":" && getcmdline() == "qas") ? "qa!" : "qas"') -- use qas instead of qa!, which is a real pain!.

vim.cmd('cnoreabbrev <expr> qs (getcmdtype() == ":" && getcmdline() == "qs") ? "q!" : "qs"') -- use qa instead of q!, which is a real pain!.
