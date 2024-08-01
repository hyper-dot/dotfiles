lvim.builtin.breadcrumbs.active = false

-- Bufferline config
local mocha = require("catppuccin.palettes").get_palette "mocha"
lvim.builtin.bufferline = {
  highlights = require("catppuccin.groups.integrations.bufferline").get {
    styles = { "italic", "bold" },
    custom = {
      all = {
        fill = { bg = mocha.base },
      },
      mocha = {
        background = { fg = mocha.text },
      },
      latte = {
        background = { fg = "#000000" },
      },
    },
  },
}
