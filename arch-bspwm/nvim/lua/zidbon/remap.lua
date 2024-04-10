-- Open netrw file viewer
--vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)
vim.keymap.set("n", "-", vim.cmd.Ex)

-- Paste from system clipboard
-- vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy to clipboards
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Select All
vim.keymap.set("n", "==", [[ggVG]])

-- Move clumps of lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
