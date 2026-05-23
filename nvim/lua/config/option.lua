vim.opt.mouse = "a" -- enable mouse

vim.opt.expandtab = true -- make TAB insert spaces
vim.opt.softtabstop = 4 -- number of spaces to be inserted with TAB
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4 -- number of visual spaces per TAB
vim.opt.smartindent = true

vim.opt.wrap = false

-- Disable backups and enable long running undo for ndotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.number = true -- show line numbers
vim.opt.relativenumber = true -- show relative line numbers
vim.opt.cursorline = true -- underline the line which the cursor is on
vim.opt.splitbelow = true -- open vertical splits at the bottom
vim.opt.splitright = true -- open horizontal splits at the right

vim.opt.termguicolors = true -- enbale 24-bit RGB color

vim.opt.hlsearch = false -- turn highlighting off
vim.opt.incsearch = true -- search as characters are entered
vim.opt.ignorecase = true -- ignore case in seachs by default
vim.opt.smartcase = true -- dont ignore case if an uppercase is entered

vim.opt.updatetime = 50
