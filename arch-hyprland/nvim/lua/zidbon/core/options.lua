-- Map leader
-- vim.g.mapleader = " "

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab spacing
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Line wraping
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.list = false

-- Highlighting
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Scrolling
vim.opt.scrolloff = 8

-- Colors
vim.g.termguicolors = true
--vim.cmd("colorscheme evergarden")
vim.cmd("colorscheme evergarden")
vim.opt.background = "dark" -- colorschemes that can be light or dark will be dark
vim.cmd("highlight Normal guibg=none") -- makes background transparent

-- NetRW settings
vim.g.netrw_bufsettings = "noma nomod nu rnu nob1 nowrap ro"
--vim.cmd("let g:netrw_liststyle = 3") -- List Style 3 = Tree

-- Clipboard
vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- Cursor
--vim.opt.cursorline = true -- underline the current line under the cursor

-- Split windows
vim.opt.splitright = true
vim.opt.splitbelow = true
