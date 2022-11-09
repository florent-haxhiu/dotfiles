local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("lenti.lsp.mason")
require("lenti.lsp.handlers").setup()
require("lenti.lsp.null-ls")
