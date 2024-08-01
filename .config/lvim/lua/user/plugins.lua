lvim.builtin.alpha.active = false
lvim.builtin.dap.active = false
lvim.builtin.which_key.active = false
lvim.builtin.gitsigns.active = false

lvim.plugins = {
  {

    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },
  {
    "askfiy/visual_studio_code",
    priority = 1000,
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    keys = {
      { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
      { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
      { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
      { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g["mkdp_theme"] = "light"
      vim.g["mkdp_browser"] = "firefox"
      vim.g["mkdp_auto_close"] = 0
    end,
    ft = { "markdown" },
  },

  { "windwp/nvim-ts-autotag", after = "nvim-treesitter" },
}
