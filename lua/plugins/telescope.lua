-- Fuzzy Finder (files, lsp, etc)
return {

  "nvim-telescope/telescope.nvim",

  event = "VimEnter",

  branch = "0.1.x",

  dependencies = {
    "nvim-lua/plenary.nvim" ,
    "nvim-telescope/telescope-ui-select.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      cond = function()
        return vim.fn.executable("make") == 1
      end,
    },
    {
      "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font
    },
    { -- Insert references from zotero
      'jmbuhr/telescope-zotero.nvim',
      dependencies = {'kkharji/sqlite.lua'},
      config = function()
        require'zotero'.setup{
          zotero_db_path = '~/.Zotero/zotero.sqlite',
          better_bibtex_db_path = '~/.Zotero/better-bibtex.sqlite',
          zotero_storage_path = '~/.Zotero/storage', }
      end,
    },
  },
  
  config = function()
    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown(),
        },
      },
    })
    pcall(require("telescope").load_extension, "fzf")
    pcall(require("telescope").load_extension, "ui-select")
    require'telescope'.load_extension 'zotero'
    
  end,
}
-- vim: ts=2 sts=2 sw=2 et
