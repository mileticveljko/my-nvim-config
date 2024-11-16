pcall(require, "neovibe.options")
pcall(require, "neovibe.keymaps")
pcall(require, "user_options")
pcall(require, "user_keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
  print("Couldn't load Packer!")
	return
end
lazy.setup("neovibe.plugins")
