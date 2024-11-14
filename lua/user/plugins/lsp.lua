return {
  {
    "williamboman/mason.nvim",
    config = function()
      local status_ok, mason = pcall(require, "mason")
      if not status_ok then
        print("Couldn't load mason!")
        return
      end
      mason.setup({})
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
      if not status_ok then
        print("Couldn't load mason-lspconfig!")
        return
      end
      mason_lspconfig.setup({
        ensure_installed = {
          "lua_ls", "gopls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local status_ok, lspconfig = pcall(require, "lspconfig")
      if not status_ok then
        print("Couldn't load lspconfig!")
        return
      end

      lspconfig.lua_ls.setup({})
      lspconfig.gopls.setup({})

      vim.lsp.handlers['textDocument/publishDiagnostics'] =
        vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
          virtual_text = true,
          signs = true,
          underline = true,
          update_in_insert = true,
        })
      vim.keymap.set("n", "K",  vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
      vim.keymap.set("n", "ga", vim.lsp.buf.code_action, {})
    end
  }
}
