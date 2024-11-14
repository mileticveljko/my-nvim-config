local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

-- remap leader key --
keymap("", "<Space>", "Nop", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NORMAL MODE --

-- window navigation --
keymap("n", "<C-j>", "<C-W>j", opts)
keymap("n", "<C-h>", "<C-W>h", opts)
keymap("n", "<C-k>", "<C-W>k", opts)
keymap("n", "<C-l>", "<C-W>l", opts)

-- show file tree --
keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- open new window -- 
keymap("n", "<leader>k", "<C-W>s", opts)
keymap("n", "<leader>l", "<C-W>v", opts)

-- resizing --
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- navigate buffers --
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- close buffer -- 
keymap("n", "<leader>d", ":bd<CR>", opts)

-- move text up and down --
keymap("n", "<A-j>", ":m +1<CR>", opts)
keymap("n", "<A-k>", ":m -2<CR>", opts)

-- INSERT MODE --

-- close inserd mode --
keymap("i", "jk", "<ESC>", opts)

-- VISUAL MODE --

-- indent selection --
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down --
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- keep yanked word in register after selection paste --
keymap("v", "p", '"_dP', opts)

-- VISUAL BLOCK MODE --

-- move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)
