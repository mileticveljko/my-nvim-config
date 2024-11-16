local status_ok, mason = pcall(require, "mason")
if not status_ok then
  print("Couldn't load mason!")
  return
end
mason.setup({})
