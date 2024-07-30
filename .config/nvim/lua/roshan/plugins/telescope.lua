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

    -- telescope.setup({
    --   defaults = {
    --     path_display = { "smart" },
    --     mappings = {
    --       i = {
    --         ["<C-k>"] = actions.move_selection_previous,                       -- move to prev result
    --         ["<C-j>"] = actions.move_selection_next,                           -- move to next result
    --         ["<S-Tab>"] = actions.move_selection_previous,                     -- move to prev result
    --         ["<Tab>"] = actions.move_selection_next,                           -- move to next result
    --         ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
    --       }
    --     }
    --   }
    -- })

    telescope.setup(
      {
        pickers = {
          find_files = {
            hidden = true
          }
        },
        defaults = {
          vimgrep_arguments = {
            "rg",
            "-L",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
          },
          prompt_prefix = "   ",
          selection_caret = "  ",
          entry_prefix = "  ",
          initial_mode = "insert",
          selection_strategy = "reset",
          sorting_strategy = "ascending",
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.55,
              results_width = 0.8,
            },
            vertical = {
              mirror = false,
            },
            width = 0.9,
            height = 0.8,
            preview_cutoff = 120,
          },
          file_sorter = require("telescope.sorters").get_fuzzy_file,
          file_ignore_patterns = { "node_modules", ".git" },
          generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
          path_display = { "truncate" },
          winblend = 0,
          border = {},
          borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
          color_devicons = true,
          set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
          file_previewer = require("telescope.previewers").vim_buffer_cat.new,
          grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
          qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
          -- Developer configurations: Not meant for general override
          buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
          mappings = {
            n = { ["q"] = require("telescope.actions").close },
            i = {
              ["<C-k>"] = actions.move_selection_previous,                       -- move to prev result
              ["<C-j>"] = actions.move_selection_next,                           -- move to next result
              ["<S-Tab>"] = actions.move_selection_previous,                     -- move to prev result
              ["<Tab>"] = actions.move_selection_next,                           -- move to next result
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
            }
          },
        },

        extensions_list = { "themes", "terms" },
        extensions = {},
      }
    )
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
