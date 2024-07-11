return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function ()
    require("lualine").setup({
      init = function()
        vim.g.lualine_laststatus = vim.o.laststatus
        if vim.fn.argc(-1) > 0 then
          -- set an empty statusline till lualine loads
          vim.o.statusline = " "
        else
          -- hide the statusline on the starter page
          vim.o.laststatus = 0
        end
      end,
      options = {
        globalstatus = true,
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = " ", right = " " },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = { "TelescopePrompt", "dashboard", "bash" },
          winbar = { "TelescopePrompt" },
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
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { "filename", padding = { left = 0, right = 1 } },
        },
        lualine_x = {},
        lualine_y = { "swenv" },
        lualine_z = { { "location", separator = "/", padding = { left = 0, right = 0 } }, "vim.fn.line('$')" },
      },
      extensions = { "toggleterm", "neo-tree", "oil" },
    })
  end
}
