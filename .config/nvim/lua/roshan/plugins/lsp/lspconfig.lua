return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim",                   opts = {} }
  },
  config = function()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local k = vim.keymap

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }
        -- set keybinds
        k.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts)                  -- show definition, references
        -- k.set("n", "gD", "<cmd>Telescope lsp_decleration<CR>", opts) -- go to declaration
        k.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)           -- see definition and make edits in window
        k.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)       -- go to implementation
        k.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)         -- see available code actions
        k.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)              -- smart rename
        k.set("n", "<leader>D", "<cmd>Lspsaga show_buf_diagnostics<CR>", opts) -- show diagnostics for buffer
        -- k.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show diagnostics for cursor
        k.set("n", "<leader>d", vim.diagnostic.open_float, opts)               -- show diagnostics for cursor
        k.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)        -- jump to previous diagnostic in buffer
        k.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)        -- jump to next diagnostic in buffer
        k.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)                    -- show documentation for what is under cursor
        -- k.set("n", "K", vim.lsp.buf.hover, opts)                               -- show documentation for what is under cursor
        k.set("n", "<leader>rn", vim.lsp.buf.rename, opts)                     -- smart rename
      end
    })

    local capabilities = cmp_nvim_lsp.default_capabilities()
    local signs = { Error = "", Warn = "", Hint = "", Info = "" }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end



    vim.diagnostic.config({
      virtual_text = {
        prefix = "-",
      },
      update_in_insert = false,
      float = {
        source = "always", -- Or 'if_many'
        border = "rounded",
      },
    })

    -- Disable virtual text for diagnostics
    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = false,
    })

    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
        })
      end,
      ["lua_ls"] = function()
        lspconfig.lua_ls.setup({
          capabilities = capabilities,
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" }
              },
              completion = {
                callSnippet = "Replace"
              }
            }
          }
        })
      end
    })
  end
}
