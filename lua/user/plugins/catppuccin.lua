return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      local colorscheme = "catppuccin"
      local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
      if not status_ok then
        print("Colorscheme " .. colorscheme .. " not found!")
      else
        -- TODO: Add default colorscheme
      end
    end
  }
}
