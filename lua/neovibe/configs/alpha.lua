local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  [[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗██████╗ ███████╗]],
  [[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║██╔══██╗██╔════╝]],
  [[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██████╔╝█████╗  ]],
  [[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██╔══██╗██╔══╝  ]],
  [[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██████╔╝███████╗]],
  [[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═════╝ ╚══════╝]],
}

dashboard.section.buttons.val = {
  dashboard.button("i", "    New file", ":ene <BAR> startinsert<CR>"),
  dashboard.button("o", "    Old files", ":Telescope oldfiles<CR>"),
  dashboard.button("f", "󰥨    Find file", ":Telescope find_files<CR>"),
  dashboard.button("g", "󰱼    Find text", ":Telescope live_grep<CR>"),
  dashboard.button("q", "󰭿    Quit", ":qa<CR>"),
}

alpha.setup(dashboard.opts)
