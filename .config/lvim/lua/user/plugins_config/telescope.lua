local actions = require("telescope.actions")
lvim.builtin.telescope.defaults = {
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
  file_ignore_patterns = { "node_modules", ".git" },
  generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
  path_display = { "truncate" },
  winblend = 0,
  border = {},
  borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
  set_env = { ["COLORTERM"] = "truecolor" },
  file_previewer = require("telescope.previewers").vim_buffer_cat.new,
  grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
  qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
  buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
}
lvim.builtin.telescope.defaults.mappings = {
  n = { ["q"] = require("telescope.actions").close },
  i = {
    ["<C-k>"] = actions.move_selection_previous,                       -- move to prev result
    ["<C-j>"] = actions.move_selection_next,                           -- move to next result
    ["<S-Tab>"] = actions.move_selection_previous,                     -- move to prev result
    ["<Tab>"] = actions.move_selection_next,                           -- move to next result
    ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
  }
}
