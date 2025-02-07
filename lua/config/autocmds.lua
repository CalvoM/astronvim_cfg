-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- local client = vim.lsp.start({
--   name = "D2lsp",
--   cmd = { "/home/d1r3ct0r/Coding/Projects/d2-lsp/main" },
-- })
--
-- if not client then
--   vim.notify("Lsp not well setup")
-- end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "d2",
  callback = function()
    vim.lsp.buf_attach_client(
      0,
      vim.lsp.start_client({ name = "d2lsp", cmd = { "/home/d1r3ct0r/Coding/Projects/d2-lsp/main" } })
    )
  end,
})
