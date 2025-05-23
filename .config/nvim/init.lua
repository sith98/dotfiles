vim.opt.scrolloff = 10

vim.g.mapleader = " "
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.opt.guicursor = "n-v-i-c:block-Cursor"
vim.opt.linebreak = true

vim.o.number = true
vim.o.relativenumber = true

