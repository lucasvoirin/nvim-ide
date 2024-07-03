local M = {'akinsho/bufferline.nvim', 
	version = "*", 
	dependencies = 'nvim-tree/nvim-web-devicons'}


    function M.config()
 require("bufferline").setup{
 options = {
 auto_toggle_bufferline = true,
      offsets = {
        {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = false -- use a "true" to enable the default, or set your own character
        },
                {
            filetype = "neo-tree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true -- use a "true" to enable the default, or set your own character
        }
 }

    }
 }
 end

return M
