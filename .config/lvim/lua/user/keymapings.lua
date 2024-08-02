lvim.leader = "space"
lvim.keys.normal_mode['<leader>f'] = false

-- Normal mode keymapping
lvim.keys.normal_mode = {
  ["<leader>mt"] = "<cmd>MarkdownPreviewToggle<CR>",
  ["<C-h>"] = "^",
  ["<C-l>"] = "g_",
  ["<Tab>"] = ":BufferLineCycleNext<CR>",
  ["<S-Tab>"] = ":BufferLineCyclePrev<CR>",
  ["<leader>x"] = ":BufferKill<CR>",
  [";"] = ":",
  -- Buffer related
  ['<leader>w'] = '<cmd>w<CR>',
  ['<leader>q'] = '<cmd>q<CR>',
  ['<leader>h'] = '<cmd>nohlsearch<CR>',
  -- LSP Related
  ['<leader>rn'] = vim.lsp.buf.rename,
  ['<leader>d'] = vim.diagnostic.open_float,
  ['<leader>D'] = "<cmd>Telescope diagnostics<CR>",
  ['gd'] = "<cmd>Telescope lsp_definitions<CR>",
  -- Nvim tree
  ['<leader>e'] = "<cmd>NvimTreeFindFileToggle<CR>",
  -- Telsecope
  ["<leader>fr"] = "<cmd>Telescope oldfiles<CR>",
  ["<leader>ff"] = "<cmd>Telescope find_files<CR>",
  ["<leader>fw"] = "<cmd>Telescope live_grep<CR>",
}

--Insert mode
lvim.keys.insert_mode = {
  ["<C-h>"] = "<C-o>h",
  ["jj"] = "<esc>",
  ["<C-l>"] = "<C-o>a",
}
