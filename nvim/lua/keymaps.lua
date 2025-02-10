vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>", { desc = "Open Netrw" })

vim.keymap.set("n", ";", ":")

vim.keymap.set("n", "]b", "<cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "[b", "<cmd>bprev<CR>", { desc = "Previous buffer" })

vim.keymap.set("n", "<ESC>", "<cmd>noh<CR>", { desc = "Clear highlights" })
