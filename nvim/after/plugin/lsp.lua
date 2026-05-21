-- mason-lspconfig auto-sets up installed servers via vim.lsp.config
require("mason-lspconfig").setup({
    ensure_installed = { "clangd", "lua_ls", "cmake" },
    automatic_enable = true,
})

-- Per-server overrides
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
  capabilities = require('cmp_nvim_lsp').default_capabilities(), -- if using nvim-cmp
})

vim.lsp.enable('clangd')

vim.lsp.enable('cmake')

-- Attach capabilities to all servers (for nvim-cmp)
vim.lsp.config("*", {
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

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

