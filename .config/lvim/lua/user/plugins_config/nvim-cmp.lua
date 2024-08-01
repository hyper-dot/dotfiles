local c = lvim.builtin.cmp
c.mapping.preset.insert({
  ["<S-Tab>"] = c.mapping.select_prev_item(), -- previous suggestion
  ["<Tab>"] = c.mapping.select_next_item(),   -- previous suggestion
  ["<C-Space>"] = c.mapping.complete(),       -- show completion suggestions
  ["<C-e>"] = c.mapping.abort(),              -- close completion window
  ["<CR>"] = c.mapping.confirm({ select = true }),
})
