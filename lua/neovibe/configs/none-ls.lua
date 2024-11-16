local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
  print("Couldn't load none-ls!")
  return
end

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
  },
})

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
