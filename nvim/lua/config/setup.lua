--  ===== lsp =====
-- Attach capabilities to all servers (for nvim-cmp)
vim.lsp.config("*", {
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
        },
    },
})

vim.lsp.config('clangd', {
  cmd = {
    'clangd',
    '--background-index',
    '--clang-tidy',
    '--header-insertion=iwyu',
    '--completion-style=detailed',
    '--function-arg-placeholders=1',
  },
  filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda' },
  root_markers = { 'compile_commands.json', 'compile_flags.txt', '.git', 'meson.build', },
})

vim.lsp.enable('clangd')

local map = vim.keymap.set

map("n", "<leader>h", "<cmd>LspClangdSwitchSourceHeader<CR>", {
  desc = "Switch source/header",
  silent = true,
})

map("n", "gd", vim.lsp.buf.definition, { desc = "Goto definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Goto declaration" })
map("n", "gr", vim.lsp.buf.references, { desc = "References" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Goto implementation" })
map("n", "gt", vim.lsp.buf.type_definition, { desc = "Type definition" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
map("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature help" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })

map("n", "<leader>e", vim.diagnostic.open_float, {
  desc = "Line diagnostics",
})
map("n", "<leader>q", vim.diagnostic.setloclist, {
  desc = "Diagnostics list",
})

-- ==== treesitter ====

require('nvim-treesitter').install { "c", "cpp", "lua", "rust" }

vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})

--  ==== auto-complete ====

vim.opt.completeopt = { "menuone", "noselect", "popup" }

--require("nvim-cmp").setup({
--  mapping = cmp.mapping.preset.insert({
--    ["<CR>"] = cmp.mapping.confirm({ select = true }),
--    ["<Tab>"] = cmp.mapping.select_next_item(),
--    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
--  }),
--  sources = {
--    { name = "nvim_lsp" },
--  },
--})

-- ==== telescope =====

require("telescope").setup({})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files,  { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", builtin.git_files,   { desc = "Git files" })
vim.keymap.set("n", "<leader>fs", builtin.live_grep,   { desc = "Live grep" })
vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "Find word under cursor" })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Diagnostics" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
vim.keymap.set("n", "<leader>lr", builtin.lsp_references,        { desc = "LSP references" })
vim.keymap.set("n", "<leader>ld", builtin.lsp_definitions,       { desc = "LSP definitions" })

-- ==== UI ====
require("lualine").setup({
	options = {
		theme = "gruvbox_dark",
	},
})
require("bufferline").setup({})
require("nvim-autopairs").setup({})


-- ==== aerial ====

require("aerial").setup({})

vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")

-- ==== color scheme ==== 

vim.opt.termguicolors = true -- enbale 24-bit RGB color

-- Gruvbox
-- require("gruvbox").setup({
--     contrast = "soft",
--     bold = false,
-- })
--
-- vim.cmd.colorscheme('gruvbox')

-- Fluoromachine
-- require("fluoromachine").setup({
-- 	glow = false,
-- 	transparent = false,
-- 	theme = "fluoromachine",
-- })
-- vim.cmd.colorscheme("fluoromachine")

vim.cmd.colorscheme("dath")

-- ==== format ====

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

-- nvim-tree

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({

    git = {
        enable = false,
    },
})

vim.keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
