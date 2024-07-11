return {
  "nvimdev/dashboard-nvim",
  lazy = false, -- As https://github.com/nvimdev/dashboard-nvim/pull/450, dashboard-nvim shouldn't be lazy-loaded to properly handle stdin.
  opts = function()

    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },
      config = {
        header = {
        [[                                                    ]],
        [[                                                    ]],
        [[                                                    ]],
	[[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
	[[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
	[[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
	[[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
	[[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
	[[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
	[[              [ Data Science IDE ]               ]],
        [[                                                    ]],
        [[                                                    ]] },
        -- stylua: ignore
        center = {
          { action =  "Telescope find_files",                                  desc = " Find File",      icon = " ", key = "f" },
          { action = "ene | startinsert",                                  desc = " New File",       icon = " ", key = "e" },
          { action = 'lua require("telescope").extensions.projects.projects()',    desc = " Projects",       icon = " ", key = "p" },
          { action = "Telescope oldfiles",                                     desc = " Recent Files",   icon = "󱑒 ", key = "r" },
          { action ="Telescope live_grep",                                     desc = " Find Text",      icon = "󱩾 ", key = "g" },
          { action = function() vim.api.nvim_input(':e $MYVIMRC | :cd %:p:h<cr>') end,                              desc = " Config",         icon = " ",  key = "c" },
          { action =function() vim.api.nvim_input("<cmd>qa<cr>") end     ,                                                desc = " Quit",           icon = " ", key = "q" },
        },
        footer = {"lucasvoirin/nvim-ide"}
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- open dashboard after closing lazy
    if vim.o.filetype == "lazy" then
      vim.api.nvim_create_autocmd("WinClosed", {
        pattern = tostring(vim.api.nvim_get_current_win()),
        once = true,
        callback = function()
          vim.schedule(function()
            vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
          end)
        end,
      })
    end

    return opts
  end,
}
