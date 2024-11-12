local keymap = vim.keymap
local lsp = vim.lsp.buf

local on_attach = function ()
  keymap.set("n", "K",  lsp.hover, {})
  keymap.set("n", "gd", lsp.definition, {})
  keymap.set("n", "gi", lsp.implementation, {})
  keymap.set("n", "go", lsp.type_definition, {})
  keymap.set("n", "gr", lsp.references, {})
  keymap.set("n", "gs", lsp.signature_help, {})

  vim.lsp.handlers['textDocument/publishDiagnostics'] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = true,
    }
  )
end

local status_ok, mason = pcall(require, "mason")
if not status_ok then
  print("Couldn't load mason!")
  return
end

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  print("Couldn't load mason-lspconfig!")
  return
end

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  print("Couldn't load lspconfig!")
  return
end

local servers = {
  "lua_ls",
  "gopls",
}

mason.setup({})
mason_lspconfig.setup({
  ensure_installed = servers
})

for _, srv in pairs(servers) do
  lspconfig[srv].setup {
    on_attach = on_attach
  }
end
