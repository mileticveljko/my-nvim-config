local status_ok, _ = pcall(vim.cmd, "colorscheme catppuccin")
if not status_ok then
  print("Colorscheme catppuccin not found!")
  return
end
