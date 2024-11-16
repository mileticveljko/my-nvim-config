local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  print("Couldn't load mason-lspconfig!")
  return
end

local status_ok, lsp_servers = pcall(require, "user_lsp")
if not status_ok then
  lsp_servers = { "lua_ls" }
end

mason_lspconfig.setup({
  ensure_installed = lsp_servers
})
