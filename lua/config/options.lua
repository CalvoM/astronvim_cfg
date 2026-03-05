-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.root_spec = { "cwd", "lsp" }
vim.opt.tabstop = 4
vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.lazyvim_prettier_needs_config = false
vim.g.material_style = "oceanic"
vim.g.lazyvim_php_lsp = "intelephense"
vim.g.lazyvim_eslint_auto_format = false
vim.opt.shortmess:append("c") -- skip completion messages
vim.opt.lazyredraw = false
vim.opt.synmaxcol = 240 -- avoid syntax highlighting deep lines
vim.opt.updatetime = 300
vim.opt.ttimeoutlen = 10
