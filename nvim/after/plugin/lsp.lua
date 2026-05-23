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

-- Attach capabilities to all servers (for nvim-cmp)
vim.lsp.config("*", {
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
})
