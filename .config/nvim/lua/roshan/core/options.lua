vim.cmd("let  g:netrw_liststyle=3") -- For tree view of the file

local opt = vim.opt
opt.relativenumber = true
opt.number = true
opt.clipboard = "unnamedplus"

-- tabs & indentation
opt.tabstop = 2       -- 2 space for tab (prettier default)
opt.shiftwidth = 2    -- 2 space for indent width
opt.expandtab = true  -- expand tabs to spaces
opt.autoindent = true -- copy indent from current line to next line

opt.wrap = false

-- height of command line at bottom
opt.cmdheight = 0

-- no backup & swapfile
vim.opt.backup = false
vim.opt.swapfile = false

-- case settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- colorschemes settings
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'

-- backspace
opt.backspace = 'indent,eol,start'


-- MISC
vim.opt.iskeyword:append("-")
vim.opt.path:append({ "**" })                     -- Finding files - Search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" }) -- ignores node module
vim.opt.formatoptions:append({ "r" })
vim.opt.fillchars:append({ eob = " " })           -- fills ~ sign with empty space

-- OLD ONES
-- vim.g.nord_disable_background = true
-- vim.cmd("autocmd!")
-- vim.opt.termguicolors = true
-- vim.opt.signcolumn = "yes:1" vim.scriptencoding = "utf-8"
-- vim.opt.encoding = "utf-8"
-- vim.opt.fileencoding = "utf-8"
-- vim.opt.clipboard = "unnamedplus"
-- vim.wo.number = true
-- vim.opt.relativenumber = false
-- vim.opt.title = true
-- vim.opt.autoindent = true
-- vim.opt.smartindent = true
-- vim.opt.hlsearch = true
-- vim.opt.backup = false
-- vim.opt.swapfile = false
-- vim.opt.showcmd = true
-- vim.opt.cmdheight = 1
-- vim.opt.laststatus = 2
-- vim.opt.expandtab = true
-- vim.opt.scrolloff = 10
-- vim.opt.shell = "zsh"
-- vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
-- vim.opt.inccommand = "split"
-- vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
-- vim.opt.smarttab = true
-- vim.opt.breakindent = true
-- vim.opt.shiftwidth = 4
-- vim.opt.tabstop = 4
-- vim.opt.wrap = false -- No Wrap lines
-- vim.opt.backspace = { "start", "eol", "indent" }
--
-- vim.opt.iskeyword:append("-")
-- vim.opt.path:append({ "**" }) -- Finding files - Search down into subfolders
-- vim.opt.wildignore:append({ "*/node_modules/*" })
--
-- -- Turn off paste mode when leaving insert
-- vim.api.nvim_create_autocmd("InsertLeave", {
-- 	pattern = "*",
-- 	command = "set nopaste",
-- })
--
-- -- Add asterisks in block comments
--
-- wrap txt and markdown file
vim.cmd([[
  augroup TxtFileSettings
    autocmd!
    autocmd BufEnter *.txt,*.md setlocal wrap linebreak
  augroup END
]])
