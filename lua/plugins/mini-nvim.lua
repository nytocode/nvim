-- ================================================================================================
-- TITLE : mini.nvim
-- LINKS :
--   > github : https://github.com/echasnovski/mini.nvim
-- ABOUT : Library of 40+ independent Lua modules.
-- ================================================================================================

return {
	{ "echasnovski/mini.ai", version = "*", opts = {} },
	{ "echasnovski/mini.comment", version = "*", opts = {} },
	{ "echasnovski/mini.move", version = "*", opts = {
       mappings = {
          left = '<leader>h',
          right = '<leader>l',
          down = '<leader>j',
          up = '<leader>k',
          line_left = '<leader>h',
          line_right = '<leader>l',
          line_down = '<leader>j',
          line_up = '<leader>k',
        },
  } },
	{ "echasnovski/mini.surround", version = "*", opts = {} },
	{ "echasnovski/mini.cursorword", version = "*", opts = {} },
	{ "echasnovski/mini.indentscope", version = "*", opts = {} },
	{ "echasnovski/mini.pairs", version = "*", opts = {} },
	{ "echasnovski/mini.trailspace", version = "*", opts = {} },
	{ "echasnovski/mini.bufremove", version = "*", opts = {} },
	{ "echasnovski/mini.notify", version = "*", opts = {} },
}
