return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = {
    options = {
      auto_toggle_bufferline = true,
      offsets = {
      -- Offset above neo-tree
        {
        filetype = "neo-tree",
        text = "File Explorer ",
        highlight = "Directory",
        text_align = "right",
        separator = true,
        },
      -- Offset above toggleterm
        {
        filetype = "toggleterm",
        text = " Terminal",
        highlight = "Directory",
        text_align = "left",
        separator = true,
        },
      },
    },
  },
}
