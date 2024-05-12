local status, bufferline = pcall(require, "bufferline")

if not status then
	return print("Bufferline Not found!!")
end
bufferline.setup({
	highlights = {
		fill = {
			fg = { attribute = "fg", highlight = "Normal" },
			bg = { attribute = "bg", highlight = "StatusLineNC" },
		},
		-- buffer_visible = {
		-- 	fg = { attribute = "fg", highlight = "Normal" },
		-- 	bg = { attribute = "bg", highlight = "Normal" },
		-- },
		-- buffer_selected = {
		-- 	fg = { attribute = "fg", highlight = "Normal" },
		-- 	bg = { attribute = "bg", highlight = "StatusLine" },
		-- },
		-- separator = {
		-- 	fg = { attribute = "bg", highlight = "Normal" },
		-- 	bg = { attribute = "bg", highlight = "StatusLine" },
		-- },
		-- separator_selected = {
		-- 	fg = { attribute = "fg", highlight = "Special" },
		-- 	bg = { attribute = "bg", highlight = "Normal" },
		-- },
		-- separator_visible = {
		-- 	fg = { attribute = "fg", highlight = "Normal" },
		-- 	bg = { attribute = "bg", highlight = "StatusLineNC" },
		-- },
		-- close_button = {
		-- 	fg = { attribute = "fg", highlight = "Normal" },
		-- 	bg = { attribute = "bg", highlight = "StatusLine" },
		-- },
	},
})
