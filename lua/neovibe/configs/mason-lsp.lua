local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  print("Couldn't load mason-lspconfig!")
  return
end

local servers = require("user.lsp")

mason_lspconfig.setup({
  ensure_installed = servers
})
