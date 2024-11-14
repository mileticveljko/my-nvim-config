return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local status_ok, neotree = pcall(require, "neo-tree")
    if not status_ok then
      print("Couldn't find neotree!")
      return
    end

    vim.keymap.set("n", "<leader>e", ":Neotree<CR>", {})
    neotree.setup({})
  end
}
