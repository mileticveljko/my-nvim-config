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
  msg("Couldn't load mason!")
  return
end

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
  msg("Couldn't load mason-lspconfig!")
  return
end

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  msg("Couldn't load lspconfig!")
  return
end

mason.setup({})
mason_lspconfig.setup({
  ensure_installed = {
    "sumneko_lua",
    "clangd",
    "gopls",
  }
})

local servers = {
  "lua_ls",
  "clangd",
  "gopls",
}

for _, srv in pairs(servers) do
  lspconfig[srv].setup {
    on_attach = on_attach
  }
end
