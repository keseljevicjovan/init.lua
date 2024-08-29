vim.g.mapleader = " "

-- Panes
vim.keymap.set("n", "<C-k>", ':wincmd k<CR>')
vim.keymap.set("n", "<C-j>", ':wincmd j<CR>')
vim.keymap.set("n", "<C-h>", ':wincmd h<CR>')
vim.keymap.set("n", "<C-l>", ':wincmd l<CR>')

-- Clipboard
vim.keymap.set({"n","v"}, "Y", [["+y]])
vim.keymap.set({"n","v"}, "P", [["+p]])

-- Non-register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set({"n", "v"}, "<leader>c", [["_c]])

-- Navigation
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Terminal
vim.keymap.set("n", "T", vim.cmd.term)
vim.keymap.set("t", "<C-t>", [[<C-\><C-n>]])

-- Useful
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

