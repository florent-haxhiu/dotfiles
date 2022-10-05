local nnoremap = require("lenti.keymap").nnoremap
local builtin = require("telescope.builtin")

-- This is for netwr directory list
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Telescope
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})

-- Mason
nnoremap("<leader>ma", "<cmd>Mason<CR>")

-- Formatter
nnoremap("<leader>f", "<cmd>Format<CR>")

-- Prettier
nnoremap("<leader>p", "<cmd>Prettier<CR>")
