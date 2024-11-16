local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  print("Couldn't load lspconfig!")
  return
end

lspconfig.lua_ls.setup({})
lspconfig.gopls.setup({})

vim.lsp.handlers['textDocument/publishDiagnostics'] =
  vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true,
  })
vim.keymap.set("n", "K",  vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
vim.keymap.set("n", "ga", vim.lsp.buf.code_action, {})
