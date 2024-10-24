local msg = vim.notify
local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  msg("Couldn't find treesitter!")
  return
end

configs.setup {
  ensure_installed = { "lua" },

  ignore_install = { "" },

  sync_install = false,

  highlight = {
    enable = true,
    disable = { "" },
  },

  autopairs = {
    enable = true,
  },

  indent = { enable = true, disable = {} },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

