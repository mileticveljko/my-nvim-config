local keymap = vim.keymap

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

keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
