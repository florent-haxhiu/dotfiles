local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({
        buffer = bufnr,
        omit = {"<F2>", "<F3>", "<F4>"}
    })

    local opts = { buffer = bufnr }
    local bind = vim.keymap.set

    bind("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
    bind("n", "<leader>fm", "<cmd> lua vim.lsp.buf.format()<cr>", opts)
    bind("n", "<leader>ca", "<cmd> lua vim.lsp.buf.code_action()<cr>", opts)
end)

require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
require("lspconfig").terraformls.setup({})

lsp.setup()

local formatting = require("null-ls").builtins.formatting
local dia = require("null-ls").builtins.diagnostics
local actions = require("null-ls").builtins.code_actions

require("null-ls").setup({
    sources = {
        actions.gitsigns,

        formatting.autopep8,
        formatting.beautysh,
        formatting.clang_format,
        formatting.terraform_fmt,
        formatting.prettierd,


        dia.flake8,
        dia.terraform_validate
    }
})

require("mason-null-ls").setup({})
