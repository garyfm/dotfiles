local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr,
    preserve_mappings = false
   })
end)

lsp.ensure_installed({
        'clangd',
        'lua_ls'
})

require('lspconfig').clangd.setup({
})

lsp.setup()
