return {
  "ahmedkhalf/project.nvim",
  config = function ()
    require("project_nvim").setup {
      active = true,
      on_config_done = nil,
      manual_mode = true,
      detection_methods = { "pattern" },
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "pom.xml" , ".Rproj.user", "README.md" },
      ignore_lsp = {},
      exclude_dirs = {},
      show_hidden = false,
      silent_chdir = false,
      scope_chdir = "global",
    }
  end
}
