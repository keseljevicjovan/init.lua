vim.g.mapleader = " "

-- Panes
vim.keymap.set("n", "<C-k>", ':wincmd k<CR>')
vim.keymap.set("n", "<C-j>", ':wincmd j<CR>')
vim.keymap.set("n", "<C-h>", ':wincmd h<CR>')
vim.keymap.set("n", "<C-l>", ':wincmd l<CR>')

-- Project
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-q>pv", vim.cmd.Ex)

-- Terminal
vim.keymap.set("t", "<C-t>", [[<C-\><C-n>]])
