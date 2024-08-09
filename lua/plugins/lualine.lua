return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons",
  'archibate/lualine-time',
  'justinhj/battery.nvim'},
  config = function ()
  
  
  require("battery").setup({
	update_rate_seconds = 10,           -- Number of seconds between checking battery status
	show_status_when_no_battery = true, -- Don't show any icon or text when no battery found (desktop for example)
	show_plugged_icon = true,           -- If true show a cable icon alongside the battery icon when plugged in
	show_unplugged_icon = false,         -- When true show a diconnected cable icon when not plugged in
	show_percent = false,                -- Whether or not to show the percent charge remaining in digits
    vertical_icons = true,              -- When true icons are vertical, otherwise shows horizontal battery icon
    multiple_battery_selection = 1,     -- Which battery to choose when multiple found. "max" or "maximum", "min" or "minimum" or a number to pick the nth battery found (currently linux acpi only)
})
  local nvimbattery = {
  function()
    return require("battery").get_status_line()
  end,
}




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
          statusline = { "TelescopePrompt", "dashboard", "bash"},
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
        lualine_b = {
          'vim.fn.getcwd()'
        },
        lualine_c = {
          
            { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
      { "filename", padding = { left = 0, right = 1 } , show_modified_status = true}},
        
        lualine_y = {{ "location", separator = "/", padding = { left = 0, right = 0 } }, "vim.fn.line('$')" },
        lualine_x = {  "branch",
          {"swenv",
            cond = function() return vim.bo.filetype == "python" end,
            icon = "",
            color = { fg = "#8fb55e" }
          }},
        lualine_z = {'ctime', nvimbattery}},
        
      extensions = { "toggleterm", "oil"},
    })
  end
}
