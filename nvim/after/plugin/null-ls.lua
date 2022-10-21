local status, null_ls = pcall(require, "null-ls")
if not status then
  return
end

local formatting = null_ls.builtins.formatting

local diagnostics = null_ls.builtins.diagnostics

local sources = {
  formatting.black.with({ extra_args = { "--fast" } }),
  diagnostics.eslint_d.with({
    diagnostics_format = "[eslint] #{m}\n(#{c})",
  }),
  formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
  formatting.stylua,
  diagnostics.flake8,
  diagnostics.stylelint,
}

null_ls.setup({
  sources = sources,
})
