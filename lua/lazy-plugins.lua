-- [[ Configure and install plugins ]]

require("lazy").setup({

-- [[ Loading kickstart plugins]]
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	{"numToStr/Comment.nvim", opts = {}},
	require("kickstart/plugins/gitsigns"),
	require("kickstart/plugins/which-key"),
	require("kickstart/plugins/telescope"),
	require("kickstart/plugins/lspconfig"),
	require("kickstart/plugins/conform"),
	require("kickstart/plugins/cmp"),
	require("kickstart/plugins/tokyonight"),
	require("kickstart/plugins/todo-comments"),
  --	require("kickstart/plugins/mini"),
	require("kickstart/plugins/treesitter"),
	-- require 'kickstart.plugins.debug',
	require("kickstart.plugins.indent_line"),
	-- require 'kickstart.plugins.lint',
	-- require 'kickstart.plugins.autopairs',
	require("kickstart.plugins.neo-tree"),

 -- [[ Loading custom plugins ]]
	{ import = "custom.plugins" },
})

-- vim: ts=2 sts=2 sw=2 et
