return {
  'stevearc/oil.nvim',
  config = function()
    require("oil").setup({
    float = {
    padding = 8,
    max_width = 0,
    max_height = 0,
    border = "rounded",
    win_options = {
      winblend = 0,
    }
  }
 })
 end,
  dependencies = { "echasnovski/mini.icons" },
}
