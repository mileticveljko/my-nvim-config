local status_ok, neotree = pcall(require, "neo-tree")
if not status_ok then
  print("Couldn't find neotree!")
  return
end

neotree.setup({})
