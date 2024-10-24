local fn = vim.fn
local msg = vim.notify

-- automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  msg("Couldn't load Packer!")
	return
end

-- install your plugins here
return packer.startup(function(use)
  -- packer --
  use { "wbthomason/packer.nvim",
        commit = "ea0cc3c59f67c440c5ff0bbe4fb9420f4350b9a3"
      }
  use { "nvim-lua/plenary.nvim",
        tag = "v0.1.4"
      }

	-- colorschemes
  use { "folke/tokyonight.nvim",
        commit = "66bfc2e8f754869c7b651f3f47a2ee56ae557764"
      }

  -- completion
  use { "hrsh7th/nvim-cmp",
        tag = "v0.0.1"
      }
  use { "hrsh7th/cmp-buffer",
        commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa"
      }
  use { "hrsh7th/cmp-path",
        commit = "91ff86cd9c29299a64f968ebb45846c485725f23"
      }
  use { "hrsh7th/cmp-cmdline",
        commit = "d250c63aa13ead745e3a40f61fdd3470efde3923"
      }
  use { "saadparwaiz1/cmp_luasnip",
        commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36"
      }
  use { "hrsh7th/cmp-nvim-lsp",
        commit = "39e2eda76828d88b773cc27a3f61d2ad782c922d"
      }

  -- snipets
  use { "L3MON4D3/LuaSnip",
        tag = "v2.3.0"
      }
  use { "rafamadriz/friendly-snippets",
        commit = "9a91957168c0ba4b14291d9ebefc83a36165d1b8"
      }

  -- LSP
  use { "neovim/nvim-lspconfig",
        tag = "v1.0.0"
      }
  use { "williamboman/mason.nvim",
        tag = "v1.10.0"
      }
  use { "williamboman/mason-lspconfig.nvim",
        commit = "0051870dd728f4988110a1b2d47f4a4510213e31"
      }

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
