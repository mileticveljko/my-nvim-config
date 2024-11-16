local status_ok, neotree = pcall(require, "neo-tree")
if not status_ok then
  print("Couldn't find neotree!")
  return
end

vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {})

neotree.setup({})
