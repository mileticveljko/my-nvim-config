user = "dzo"

local options = user .. ".options"
local keymaps = user .. ".keymaps"
local plugins = user .. ".plugins"
local colorscheme = user .. ".colorscheme"
local cmp = user .. ".cmp"
local lsp = user .. ".lsp"

_ = pcall(require, options)
_ = pcall(require, keymaps)
_ = pcall(require, plugins)
_ = pcall(require, colorscheme)
_ = pcall(require, cmp)
_ = pcall(require, lsp)
