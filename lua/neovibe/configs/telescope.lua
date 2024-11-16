local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  print("Couldn't find telescope!")
  return
end

telescope.setup({
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown({}), },
  },
})
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>tf", builtin.find_files, {})
vim.keymap.set("n", "<leader>tg", builtin.live_grep, {})

require("telescope").load_extension("ui-select")
