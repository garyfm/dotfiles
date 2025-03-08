require("mason").setup({
	opt = {
		ensure_installed = {
			"clangd",
			"clang-format",
			"cmake-language-server cmake",
			"cmakelang",
			"codespell",
			"cpplint",
			"cpptools",
			"lua-language-server lua_ls",
			"luacheck",
			"stylua",
		},
	},
})
