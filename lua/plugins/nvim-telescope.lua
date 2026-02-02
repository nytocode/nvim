-- ================================================================================================
-- TITLE : telescope
-- LINKS :
--   > github : https://github.com/nvim-telescope/telescope.nvim
-- ABOUT : lua-based fzf-finder
-- ================================================================================================

return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	keys = {
		{ "<leader><space>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
		{ "<leader>/", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help Tags" },
		{ "<leader>e", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>", desc = "Open File Browser" },
	},
	config = function()
		local telescope = require("telescope")
		local fb_actions = require("telescope._extensions.file_browser.actions")

		telescope.setup({
			extensions = {
				file_browser = {
					-- theme = "ivy",
					-- disables netrw and use telescope-file-browser in its place
					hijack_netrw = true,
					mappings = {
						["i"] = {
							-- your custom insert mode mappings
							["<C-n>"] = fb_actions.create,
							["<C-r>"] = fb_actions.rename,
							["<C-d>"] = fb_actions.remove,
							["<C-y>"] = fb_actions.copy,
						},
						["n"] = {
							["N"] = fb_actions.create,
							["r"] = fb_actions.rename,
							["d"] = fb_actions.remove,
							["y"] = fb_actions.copy,
							["h"] = fb_actions.goto_parent_dir,
							["l"] = fb_actions.open,
							["/"] = fb_actions.toggle_hidden,
						},
					},
				},
			},
		})

		-- Load the file_browser extension
		-- telescope.load_extension("file_browser")
		-- telescope.load_extension("fzf")
	end,
}
