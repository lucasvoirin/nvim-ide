return {{
    "R-nvim/R.nvim",
    lazy = false,
    opts = {
    user_maps_only = true,
    buffer_opts = "winfixwidth winfixheight nobuflisted nonumber norelativenumber",
    }
  },
  "R-nvim/cmp-r",
  {
    "hrsh7th/nvim-cmp",
    config = function()
      require("cmp").setup({ sources = {{ name = "cmp_r" }}})
      require("cmp_r").setup({ })
    end,
  },
  }
