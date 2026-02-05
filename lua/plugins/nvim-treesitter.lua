-- ================================================================================================
-- TITLE : nvim-treesitter
-- ABOUT : Treesitter configurations and abstraction layer for Neovim.
-- LINKS :
--   > github : https://github.com/nvim-treesitter/nvim-treesitter
-- ================================================================================================

return {
	"nvim-treesitter/nvim-treesitter",
	main = "nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"css",
			"dockerfile",
			"go",
			"html",
			"javascript",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"python",
			"rust",
			"svelte",
			"typescript",
			"tsx",
			"vue",
			"yaml",
			"prisma",
		},
		auto_install = true,
		sync_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		indent = { enable = true },
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<CR>",
				node_incremental = "<CR>",
				scope_incremental = "<TAB>",
				node_decremental = "<S-TAB>",
			},
		},
	},
	config = function()
		vim.cmd.syntax("off")
		vim.api.nvim_create_autocmd("BufReadPost", {
			pattern = "*",
			callback = function()
				-- can start a specific treesitter on a specific buffer also
				-- vim.treesitter.start(0, "c")
				-- Only start treesitter if a filetype is detected
				if vim.bo.filetype ~= "" then
					pcall(vim.treesitter.start)
				end
			end,
		})
	end,
}
