return {'akinsho/bufferline.nvim', 
  version = "*", 
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = {
    options = {
      auto_toggle_bufferline = true,
      offsets = {
        filetype = "neo-tree", -- remove tabline above neo-tree explorer
        text = "File Explorer",
        highlight = "Directory",
        separator = true
      }
    }
  }
}
