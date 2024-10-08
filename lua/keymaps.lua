-- [[ Keymaps ]]
--  See `:help vim.keymap.set()`

-- Toggleterm as REPL
--vim.keymap.set("n", "<C-s>", "<cmd>ToggleTermSendCurrentLine REPL<CR>", {})
--vim.keymap.set("v", "<C-s>", "<cmd>ToggleTermSendVisualSelection REPL<CR>", {})


-- Buffers navigation
--vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
--vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { silent = true })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Windows navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })


-- Open custom ToggleTerm
local Terminal  = require('toggleterm.terminal').Terminal
local repl = Terminal:new({
  display_name = "REPL", 
  direction = "vertical",
  hidden = true
})
function _repl_toggle() repl:toggle() end
vim.keymap.set({"n", "i", "t"}, "<c-^>", "<cmd>lua _repl_toggle()<CR>", {noremap = true, silent = true})
local terminal = Terminal:new({
 display_name = "Terminal", 
 direction = "float"
})
function _terminal_toggle() terminal:toggle() end
vim.keymap.set({"n", "i", "t"}, "<c-\\>", "<cmd>lua _terminal_toggle()<CR>", {noremap = true, silent = true})
    
-- vim: ts=2 sts=2 sw=2 et:
