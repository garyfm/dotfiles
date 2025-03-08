vim.opt.termguicolors = true -- enbale 24-bit RGB color

-- Gruvbox
-- require("gruvbox").setup({
--     contrast = "soft",
--     bold = false,
-- })
--
-- vim.cmd.colorscheme('gruvbox')

-- Fluoromachine
require("fluoromachine").setup({
	glow = false,
	transparent = false,
	theme = "fluoromachine",
})
vim.cmd.colorscheme("fluoromachine")
