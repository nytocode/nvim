-- ================================================================================================
-- TITLE : lua_ls (Lua Language Server) LSP Setup
-- LINKS :
--   > github: https://github.com/LuaLS/lua-language-server
-- ================================================================================================

--- @param capabilities table LSP client capabilities (typically from nvim-cmp or similar)
--- @return nil
return function(capabilities)
	vim.lsp.config("prismals", {
		capabilities = capabilities,
		cmd = { "prisma-language-server", "--stdio" },
		filetypes = { "prisma" },
		root_markers = { ".git", "package.json" },
		settings = {
			prisma = {
				prismaFmtBinPath = "",
			},
		},
	})
end
