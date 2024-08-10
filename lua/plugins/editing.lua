-- Plugins to help code editing

return{

  { -- Auto close brackets
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup {}
      require('nvim-autopairs').remove_rule '`'
    end,
  },

  { -- Comment/uncomment lines easily
    "numToStr/Comment.nvim",
    opts = {}
  },

}
