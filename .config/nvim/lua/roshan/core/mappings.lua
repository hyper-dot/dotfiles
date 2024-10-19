local k = vim.keymap
vim.g.mapleader = " "

-- In insert mode
local opts = {
  silent = true,
}

k.set("n", "x", '"_x')
k.set("n", ";", ":")

k.set("n", "<leader>w", ":w<CR>", opts)
k.set("n", "<leader>h", ":nohlsearch<CR>", opts) -- removes highlight from searched text
k.set("n", "<leader>q", ":q<CR>", opts)          -- Quits neovim
k.set("n", "<leader>Q", ":q!<CR>")               -- Force quits wihout saving
k.set("n", "<C-h>:", "^")
k.set("n", "<C-l>", "g_")
-- k.set("n", "<leader>s", ":vsplit<CR>")
-- k.set("n", "<leader><S-s>", ":split<CR>")

-- NoeTree File explorer
-- k.set("n", "<leader>e", ":Neotree reveal toggle<CR>", opts)

-- In insert mode
k.set("i", "jj", "<ESC>") -- Exits insert mode
k.set("i", "<C-h>", "<C-o>h")
k.set("i", "<C-l>", "<C-o>l")

-- Buffers
k.set("n", "<leader>x", ":bdelete<CR>", opts)
k.set("n", "<leader>b", ":buffers<CR>", opts)
-- k.set("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
-- k.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
k.set("n", "<Tab>", ":bnext<CR>", opts)
k.set("n", "<S-Tab>", ":bprevious<CR>", opts)
