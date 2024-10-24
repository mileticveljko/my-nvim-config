local colorscheme = "darkplus"

local msg = vim.notify

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  msg("Colorscheme " .. colorscheme .. " not found!")
  return
end
