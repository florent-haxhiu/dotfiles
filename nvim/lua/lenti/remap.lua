local nnoremap = require("lenti.keymap").nnoremap
local vnoremap = require("lenti.keymap").vnoremap
local xnoremap = require("lenti.keymap").xnoremap
local inoremap = require("lenti.keymap").inoremap
local builtin = require("telescope.builtin")

-- This is for netwr directory list
nnoremap("<leader>pv", vim.cmd.Ex)

-- Telescope
nnoremap("fg", builtin.live_grep, {})
nnoremap("ff", builtin.find_files, {})
nnoremap("fh", builtin.help_tags, {})

-- Move blocks of code around
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

nnoremap("<leader>mr", "<cmd>MarkdownPreview<CR>")

-- Grab line below and append on current cursor line while cursor in same place
nnoremap("J", "mzJ`z")

-- Half page jumping while keeping cursor in the middle
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- Keeps cursor in the middle of screen while searching for word
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

--
xnoremap("<leader>p", '"_dP')

-- Go into another directory
--nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Change current word to something else
nnoremap("<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
nnoremap("<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Quick fix navigation
nnoremap("<C-k>", "<cmd>cnext<CR>zz")
nnoremap("<C-j>", "<cmd>cprev<CR>zz")
nnoremap("<leader>k", "<cmd>lnext<CR>zz")
nnoremap("<leader>j", "<cmd>lprev<CR>zz")

-- Mason
nnoremap("<leader>ma", "<cmd>Mason<CR>")

-- Saving and sourcing files
nnoremap("<leader>so", "<cmd>so%<CR>")
nnoremap("<leader>sa", "<cmd>w<CR>")
