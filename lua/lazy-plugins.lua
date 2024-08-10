-- [[ Configure and install plugins ]]

require("lazy").setup({

	require 'plugins.gitsigns',
	require 'plugins.which-key',
	require 'plugins.telescope',
	require 'plugins.lspconfig',
	require 'plugins.cmp',
	require 'plugins.tokyonight',
	require 'plugins.todo-comments',
	require 'plugins.treesitter',
	require 'plugins.indent_line',
	{"numToStr/Comment.nvim", opts = {}},
  require 'plugins.dashboard',
  require 'plugins.lualine',
  require 'plugins.noice',
  require 'plugins.project',
  require 'plugins.quarto',
  require 'plugins.swenv',
  require 'plugins.toggleterm',
  require 'plugins.oil',
  require 'plugins.iron',
  require 'plugins.headlines',
 
   {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup {}
      require('nvim-autopairs').remove_rule '`'
    end,
  },
  
})

-- vim: ts=2 sts=2 sw=2 et
