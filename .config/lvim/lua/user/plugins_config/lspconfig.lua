local formatters = require("lvim.lsp.null-ls.formatters")
local code_actions = require("lvim.lsp.null-ls.code_actions")
local linters = require("lvim.lsp.null-ls.linters")

formatters.setup({
  { command = "stylua" },
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "html" },
  },
})

linters.setup({
  { command = "flake8",   filetypes = { "python" } },
  { command = "eslint_d", filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" } },
  {
    command = "shellcheck",
    args = { "--severity", "warning" },
  },
})

code_actions.setup({
  {
    exe = "eslint",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  },
})
