local nvimtree = lvim.builtin.nvimtree.setup
nvimtree.git = {
  enable = true,
  show_on_dirs = true,
  show_on_open_dirs = false,
  disable_for_dirs = {},
  timeout = 400,
  cygwin_support = true,
}
nvimtree.diagnostics.icons = {
  hint = "",
  info = "",
  warning = "",
  error = "",
}
nvimtree.renderer.icons.glyphs.git = {
  unstaged = "✗",
  staged = "",
  unmerged = "",
  renamed = "",
  untracked = "",
  deleted = "",
  ignored = "",
}
