return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = true,
  opts = {
    size = 70,
    open_mapping = [[<c-\>]],
    hide_numbers = true, -- hide the number column in toggleterm buffers
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    persist_size = false,
    direction = 'vertical',
    close_on_exit = true, -- close the terminal window when the process exits
    float_opts = {
      border = 'rounded',
      winblend = 0,
      highlights = {
        border = 'Normal',
        background = 'Normal',
      },
    },
  }
}
