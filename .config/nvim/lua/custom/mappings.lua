local M = {}
M.disabled = {
  n = {
    ["<leader>h"] = "",
    ["<C-a>"] = "",
    ["<S-j>"] = "",
    ["<S-l>"] = "",
    ["<C-j>"] = "",
    ["<C-l>"] = "",
    ["<leader>w"] = "",
    ["<C-n>"] = "",
  },
}

M.general = {
  n = {
    ["<leader>q"] = { "<cmd>:qa<CR>", "Quit All" },
    ["<leader>w"] = { "<cmd>:w<CR>", "Save" },
    ["<leader>h"] = { "<cmd>:nohl<CR>", "Remove Search Highlight" },
    ["<leader>d"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },
  },
  i = {
    ["jj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}

M.nvimtree = {
  plugin = true,

  n = {
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}

return M
