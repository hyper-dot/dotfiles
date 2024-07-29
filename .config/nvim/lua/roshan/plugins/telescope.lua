return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        -- path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,                       -- move to prev result
            ["<C-j>"] = actions.move_selection_next,                           -- move to next result
            ["<S-Tab>"] = actions.move_selection_previous,                     -- move to prev result
            ["<Tab>"] = actions.move_selection_next,                           -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
          }
        }
      }
    })

    telescope.load_extension("fzf")

    local k = vim.keymap
    local opts = {
      silent = true,
    }
    k.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
    k.set("n", "<leader>fw", ":Telescope live_grep<CR>", opts)
    k.set("n", "<leader>fr", ":Telescope oldfiles<CR>", opts)
  end
}
