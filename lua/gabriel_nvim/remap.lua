vim.keymap.set("n", "<leader>pe", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<n>", "nzzzv")
vim.keymap.set("n", "<N>", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dp")

vim.keymap.set("n", "<leader>h", "_")
vim.keymap.set("n", "<leader>l", "$")
vim.keymap.set("n", "<leader>j", "G")
vim.keymap.set("n", "<leader>k", "gg")

vim.keymap.set("v", "<leader>h", "_")
vim.keymap.set("v", "<leader>l", "$")
vim.keymap.set("v", "<leader>j", "G")
vim.keymap.set("v", "<leader>k", "gg")
