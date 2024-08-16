vim.g.mapleader = " "

-- Project
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-q>pv", vim.cmd.Ex)

-- Terminal
vim.keymap.set("t", "<C-t>", [[<C-\><C-n>]])
