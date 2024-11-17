local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  print("Couldn't find treesitter!")
  return
end

local tst = require("user.treesitter")

configs.setup({
  ensure_installed = tst,

  ignore_install = { "" },

  sync_install = false,

  highlight = {
    enable = true,
    disable = {},
  },

  autopairs = {
    enable = true,
    disable = {},
  },

  indent = {
    enable = true,
    disable = {},
  },
})
