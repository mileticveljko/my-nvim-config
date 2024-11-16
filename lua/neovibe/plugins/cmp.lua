return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "saadparwaiz1/cmp_luasnip",
        dependencies = {
          "L3MON4D3/LuaSnip",
          "rafamadriz/friendly-snippets",
        },
      },
    },
    config = function()
      require("neovibe.configs.cmp")
    end,
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
  },
  {
    "hrsh7th/cmp-buffer",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
  },
}
