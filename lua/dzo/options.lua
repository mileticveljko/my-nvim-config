-- creates a backup file
vim.opt.backup = false
-- allows neowin to access system clipboard
vim.opt.clipboard = "unnamedplus"
-- neovim command line height
vim.opt.cmdheight = 2
-- mostly for cmp
vim.opt.completeopt = {"menuone", "noselect"}
-- `` is invisible in markdown files
vim.opt.conceallevel = 0
-- encoding writen to a file
vim.opt.fileencoding = "utf-8"
-- highlight all matches of previous search
vim.opt.hlsearch = false
-- ignore case in search patterns
vim.opt.ignorecase = true
-- allow the mouse to be used in neovim
vim.opt.mouse = "a"
-- pop-up menu height
vim.opt.pumheight = 10
-- show current mode  
vim.opt.showmode = true
-- always shows tabs
vim.opt.showtabline = 2
-- smart case
vim.opt.smartcase = true
-- smart indentation
vim.opt.smartindent = true
-- force horisontal split to be bellow current window
vim.opt.splitbelow = true
-- force horisontal split to be right of the current window
vim.opt.splitright = true
-- creating swap file
vim.opt.swapfile = false
-- time to wait mapped sequence to complete 
vim.opt.timeoutlen = 1000
-- enables persistent undo 
vim.opt.undofile = true
-- faster completion
vim.opt.updatetime = 300
-- converts tab into spaces
vim.opt.expandtab = true
-- number of spaces inserted for each indentation
vim.opt.shiftwidth = 2
-- insert 2 spaces for tab
vim.opt.tabstop = 2
-- highlight the cursor line
vim.opt.cursorline = true
-- show numbers
vim.opt.number = true
-- show relative numbers
vim.opt.relativenumber = true
-- number column width
vim.opt.numberwidth = 4
-- sign column
vim.opt.signcolumn = "yes"
-- display line as one long line
vim.opt.wrap = true
-- minimal number of lines below or above the cursor
vim.opt.scrolloff = 8
-- minimal number of columns left or right of the cursor
vim.opt.sidescrolloff = 8
-- font and font size
vim.opt.guifont = "monospace:h17"
-- autoindentation
vim.opt.ai = true
-- autoread when file is changed outside vim
vim.opt.ar = true
-- background color mode
vim.opt.bg = "dark"
