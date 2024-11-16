return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  tag = "v0.9.0",
  config = function()
    require("neovibe.configs.treesitter")
  end,
}
