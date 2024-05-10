-- Open netrw file viewer
--vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)
vim.keymap.set("n", "-", vim.cmd.Ex)


-- Select All
vim.keymap.set("n", "==", [[ggVG]])

-- Move clumps of lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Clear hightlights
vim.keymap.set("n", "<leader>nh", ":noh<CR>")
