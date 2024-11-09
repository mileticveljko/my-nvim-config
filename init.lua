local user = "dzo"

local options = user .. ".options"
local keymaps = user .. ".keymaps"
local plugins = user .. ".plugins"
local colorscheme = user .. ".colorscheme"
local cmp = user .. ".cmp"
local lsp = user .. ".lsp"
local telescope = user .. ".telescope"
local treesitter = user .. ".treesitter"
local autopairs = user .. ".autopairs"

pcall(require, options)
pcall(require, keymaps)
pcall(require, plugins)
pcall(require, colorscheme)
pcall(require, cmp)
pcall(require, lsp)
pcall(require, telescope)
pcall(require, treesitter)
pcall(require, autopairs)
