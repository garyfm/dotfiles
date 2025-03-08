require("trouble").setup({
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
})

vim.keymap.set("n", "<leader>td", "<cmd>Trouble diagnostics toggle<cr>", {})
vim.keymap.set("n", "<leader>tD", "<cmd>Trouble diagnostics toggle<cr>", {})
vim.keymap.set("n", "<leader>ts", "<cmd>Trouble diagnostics toggle<cr>", {})
vim.keymap.set("n", "<leader>tl", "<cmd>Trouble diagnostics toggle<cr>", {})
