local nnoremap = require("lenti.keymap").nnoremap
local xnoremap = require("lenti.keymap").xnoremap

-- some useful keymaps {{{
xnoremap('<Tab>', '>gv|')
xnoremap('<S-Tab>', '<gv')
nnoremap('<Tab>', '>>_')
nnoremap('<S-Tab>', '<<_')
nnoremap('<leader>pv', ':Ex<CR>')
nnoremap('<leader>sa', ':w<CR>')
nnoremap(';', ':')
--}}}

-- execute code in nvim {{{
nnoremap('<leader>exf', ':!gcc % && ./a.out <CR>')
nnoremap('<leader>opz', ":!zathura <C-r >=expand('%:r')<cr>.pdf &<cr><cr>.pdf &<cr>")
-- }}}

-- Move Lines
nnoremap("<S-j>", [[:<c-u>execute 'm +'. v:count1<cr>==]], { silent = true, desc = "Move lines down" })
nnoremap("<S-k>", [[:<c-u>execute 'm -1-'. v:count1<cr>==]], { silent = true, desc = "Move lines up" })
xnoremap("<S-j>", [[:m '>+1<CR><CR>gv=gv]], { silent = true, desc = "Move lines down" })
xnoremap("<S-k>", [[:m '<-2<CR><CR>gv=gv]], { silent = true, desc = "Move lines up" })

nnoremap("<Esc><Esc>", ":noh<CR>", { silent = true, desc = "Clear hlsearch" })
xnoremap("/", "<Esc>/\\%V", { desc = "Search in visually selected region" })

xnoremap("<", "<gv", { desc = "Keep the visually selected area when indenting" })
xnoremap(">", ">gv", { desc = "Keep the visually selected area when indenting" })
-- }}}

-- Yank related {{{
nnoremap("<Leader>y", '"+y')
xnoremap("<Leader>y", '"+y')
nnoremap("<Leader>p", '"+p')
nnoremap("<Leader>P", '"+P')

xnoremap("p", '"_dP',
{ desc = 'Rreplace visually selected with the " contents' }
)
--}}}

-- window {{{
nnoremap('<Leader>ww', '<C-W>w', { desc = "Toggle between open windows" })
nnoremap("<leader>wd", "<C-W>c", { desc = "Delete window" })
nnoremap('<Leader>wr', '<C-W>r')
nnoremap('<Leader>wq', '<C-W>q')
nnoremap('<Leader>wh', '<C-W>h', { desc = "Move to the left window" })
nnoremap('<Leader>wl', '<C-W>l', { desc = "Move to the right window" })
nnoremap('<Leader>wj', '<C-W>j', { desc = "Move to the bottom window" })
nnoremap('<Leader>wk', '<C-W>k', { desc = "Move to the top window" })
nnoremap('<Leader>w=', '<C-W>=')
nnoremap('<Leader>ws', '<C-W>s', { desc = "Split window horizontally" })
nnoremap('<Leader>wv', '<C-W>v', { desc = "Split window vertically" })
-- Resize window using <ctrl> arrow keys
nnoremap("<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
nnoremap("<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
nnoremap("<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
nnoremap("<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- }}}
