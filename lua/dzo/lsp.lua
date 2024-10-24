local keymap = vim.keymap
local lsp = vim.lsp.buf
local msg = vim.notify

local on_attach = function ()
  keymap.set("n", "K",  lsp.hover, {})
  keymap.set("n", "gd", lsp.definition, {})
  keymap.set("n", "gi", lsp.implementation, {})
  keymap.set("n", "go", lsp.type_definition, {})
  keymap.set("n", "gr", lsp.references, {})
  keymap.set("n", "gs", lsp.signature_help, {})
end

local status_ok, mason = pcall(require, "mason")
if not status_ok then
  msg("Couldn't load Mason!")
  return
end

mason.setup({})

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  msg("Couldn't load Mason LSP-config!")
  return
end

mason_lspconfig.setup({
  ensure_isntalled = {
    "lua_ls",
    "hls",
  }
})

require('lspconfig').lua_ls.setup({
  on_attach = on_attach
})

require('lspconfig').hls.setup({
  on_attach = on_attach
})
