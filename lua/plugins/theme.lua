-- ================================================================================================
-- TITLE : melange-nvim
-- ABOUT : A subtle, warm colorscheme for Neovim inspired by Sublime Text's Melange theme.
-- LINKS :
--   > github : https://github.com/savq/melange-nvim
-- ================================================================================================

return {
	-- "savq/melange-nvim",
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	vim.cmd("colorscheme melange")
	-- end,
	{
		"xiyaowong/nvim-transparent",
		lazy = false,
		priority = 999,
	},

	-- {
	-- 	"p00f/alabaster.nvim",
	-- 	lazy = false,
	-- 	priority = 999,
	-- 	config = function()
	-- 		-- load duskfox palette
	-- 		-- local palette = require("nightfox.palette").load("duskfox")
	--
	-- 		vim.cmd("colorscheme alabaster")
	--
	-- 		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- 		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- 		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
	-- 		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	-- 		vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
	-- 		vim.api.nvim_set_hl(0, "Folded", { bg = "none" })
	-- 		vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
	-- 	end,
	-- },
	{
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require("github-theme").setup({
				options = {
					transparent = true,
				},
			})

			vim.cmd("colorscheme github_dark_tritanopia")
		end,
	},
}
