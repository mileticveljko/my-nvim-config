local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

local mason = user .. ".lsp.mason"
local handlers = user .. ".lsp.handlers"

_ = pcall(require, mason)
local status_ok, H = pcall(require, handlers)
if status_ok then
  H.setup()
end
