local common_opts = {
	noremap = true, -- non-recursive
	silent = true, -- do not show message
}

vim.g.mapleader = " " -- leader key as space

-- Better window navigation

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)

vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Resize window

vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Move selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Key cursor in the place when using `j`
vim.keymap.set("n", "J", "mzJ`z")

-- Keep copied term in register when pasting over
vim.keymap.set("x", "<leader>p", [["_dP]])

-- System clip board yank
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete to void register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")

-- Find and replace on word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Switch between header and source file
vim.keymap.set("n", "<leader>h", ":ClangdSwitchSourceHeader<CR>")

-- Close a buffer and open next one - Doesnt work
vim.keymap.set("n", " <leader>c", ":b#|bd#<CR>")
