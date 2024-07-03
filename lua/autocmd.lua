
vim.api.nvim_create_autocmd('TermOpen', {
  desc = 'remove line numbers in terminal',
  group = vim.api.nvim_create_augroup('kickstart-term', { clear = true }),
  callback = function()
    vim.wo.number = false
  end,
})
