local M = {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}

function M.config()
  require('lualine').setup {

    init = function()
      vim.g.lualine_laststatus = vim.o.laststatus
      if vim.fn.argc(-1) > 0 then
        -- set an empty statusline till lualine loads
        vim.o.statusline = ' '
      else
        -- hide the statusline on the starter page
        vim.o.laststatus = 0
      end
    end,
    options = {
      globalstatus = true,
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = ' ', right = ' ' },
      section_separators = { left = '', right = '' },
      disabled_filetypes = {
        statusline = { 'TelescopePrompt', 'dashboard', 'bash' },
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { 'filetype', 'filename' },
      lualine_x = {},
      lualine_y = { 'swenv' },
      lualine_z = { 'progress', 'location' },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = { 'toggleterm', 'nvim-tree' },
  }
end

vim.o.laststatus = vim.g.lualine_laststatus

return M
