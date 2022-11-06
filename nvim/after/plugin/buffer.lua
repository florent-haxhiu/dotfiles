require("bufferline").setup({
	options = {
		separator_style = "slant",
        persist_buffer_sort = true,
		diagnostics = "nvim_lsp",
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,
		indicator_style = "|",
		enforce_regular_tabs = true,
		always_show_bufferline = true,
	},
	highlights = {
		fill = {
			fb = { attribute = "fg", highlight = "#ff0000" },
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		background = {
			fg = { attribute = "fg", highlight = "TabLine" },
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		separator = {
			fg = { attribute = "bg", highlight = "TabLine" },
			bg = { attribute = "bg", highlight = "TabLine" },
		},
		separator_selected = {
			fg = { attribute = "bg", highlight = "Normal" },
			bg = { attribute = "bg", highlight = "Normal" },
		},
	},
})

local nnoremap = require("lenti.keymap").nnoremap

for i = 1, 9 do
	nnoremap("<leader>" .. i, function()
		require("bufferline").go_to_buffer(i, true)
	end)
end
nnoremap("<leader>" .. 0, function()
	require("bufferline").go_to_buffer(-1, true)
end)
