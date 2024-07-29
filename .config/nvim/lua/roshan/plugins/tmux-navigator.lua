return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  config = function()
    local k = vim.keymap
    vim.g.mapleader = " "

    local opts = {
      silent = true,
    }

    k.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)
    k.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)
    k.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
    k.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)
  end
}
