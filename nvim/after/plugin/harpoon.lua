local nnoremap = require("lenti.keymap").nnoremap

local silent = { silent = true }

nnoremap("<leader>ar", function() require("harpoon.mark").add_file() end, silent)
nnoremap("<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, silent)
