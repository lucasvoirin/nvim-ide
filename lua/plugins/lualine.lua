return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function ()
  
  -- Config R status
              local rstt =
            {
                { " ", "#aaaaaa" }, -- 1: ftplugin/* sourced, but nclientserver not started yet.
                { " off", "#757755" }, -- 2: nclientserver started, but not ready yet.
                { " off", "#117711" }, -- 3: nclientserver is ready.
                { " off", "#ff8833" }, -- 4: nclientserver started the TCP server
                { " off", "#3388ff" }, -- 5: TCP server is ready
                { " starting...", "#ff8833" }, -- 6: R started, but nvimcom was not loaded yet.
                { " on", "#3388ff" }, -- 7: nvimcom is loaded.
            }

            local rstatus = function ()
                if not vim.g.R_Nvim_status or vim.g.R_Nvim_status == 0 then
                    -- No R file type (R, Quarto, Rmd, Rhelp) opened yet
                    return ""
                end
                return rstt[vim.g.R_Nvim_status][1]
            end

            local rsttcolor = function ()
                if not vim.g.R_Nvim_status or vim.g.R_Nvim_status == 0 then
                    -- No R file type (R, Quarto, Rmd, Rhelp) opened yet
                    return { fg = "#000000" }
                end
                return { fg = rstt[vim.g.R_Nvim_status][2] }
            end

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
        lualine_b = {
          'vim.fn.getcwd()'
        },
        lualine_c = {
           "branch",
           { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
           { "filename", padding = { left = 0, right = 1 } },
        },
        lualine_x = {},
        lualine_y = { {rstatus, color = rsttcolor }, "swenv" },
        lualine_z = { { "location", separator = "/", padding = { left = 0, right = 0 } }, "vim.fn.line('$')" },
      },
      extensions = { "toggleterm", "neo-tree", "oil" },
    })
  end
}
