-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "ellisonleao/gruvbox.nvim" },
    { "maxmx03/fluoromachine.nvim" },
    --{ dir = "/home/garyfm/workspace/dotfiles/nvim/my-theme/my-theme.nvim" },

    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    { "mbbill/undotree" },

    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    {
        "mason-org/mason.nvim",
        build = ":MasonUpdate",
        opts = {
            ensure_installed = {
                "clangd",
                "clang-format",
                "cmake-language-server",
                "cmakelang",
                "codespell",
                "cpplint",
                "cpptools",
                "lua-language-server",
                "luacheck",
                "stylua",
            },
        },
    },

    -- mason-lspconfig bridges Mason <-> vim.lsp.config
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = { "mason-org/mason.nvim" },
    },

    -- Completion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip", -- recommended: connect LuaSnip to cmp
        },
    },

    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
    },

    -- Formatter
    { "mhartington/formatter.nvim" },

    -- Code outline
    { 
        "stevearc/aerial.nvim" 
    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {},
    },

    -- Statusline
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    -- Diagnostics
    { "folke/trouble.nvim" },
})
