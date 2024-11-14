-- Nvim version 0.9.5

User = "user"

local options = User .. ".options"
local keymaps = User .. ".keymaps"
local lazy = User .. ".lazy"

pcall(require, options)
pcall(require, keymaps)
pcall(require, lazy)
