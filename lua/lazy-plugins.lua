-- [[ Configure and install plugins ]]

require("lazy").setup({

-- [[ Loading kickstart plugins]]
	require 'plugins.gitsigns',
	require 'plugins.which-key',
	require 'plugins.telescope',
	require 'plugins.lspconfig',
	require 'plugins.cmp',
	require 'plugins.tokyonight',
	require 'plugins.todo-comments',
	require 'plugins.treesitter',
	require 'plugins.neo-tree',
	require 'plugins.indent_line',
	"tpope/vim-sleuth",
	{"numToStr/Comment.nvim", opts = {}},

-- [[ Loading custom plugins ]]
  require 'plugins.bufferline',
  require 'plugins.dashboard',
  require 'plugins.lualine',
  require 'plugins.noice',
  require 'plugins.project',
  require 'plugins.quarto',
  require 'plugins.swenv',
  require 'plugins.toggleterm',
  require 'plugins.oil',
  require 'plugins.rnvim',
})

-- vim: ts=2 sts=2 sw=2 et
