local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  print("Couldn't load mason-lspconfig!")
  return
end
mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls", "gopls"
  }
})
