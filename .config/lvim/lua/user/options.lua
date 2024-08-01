require("lvim.lsp.manager").setup("emmet_ls") --for html and css
lvim.log.level = "info"
lvim.colorscheme = "catppuccin-mocha"
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true
lvim.format_on_save = true


-- MISC
vim.opt.iskeyword:append("-")
-- Disable virtual text for diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
})
