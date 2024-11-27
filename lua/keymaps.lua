-- [[ Keymaps ]]
--  See `:help vim.keymap.set()`

-- Toggleterm as REPL
--vim.keymap.set("n", "<C-s>", "<cmd>ToggleTermSendCurrentLine REPL<CR>", {})
--vim.keymap.set("v", "<C-s>", "<cmd>ToggleTermSendVisualSelection REPL<CR>", {})



local wk = require("which-key")
wk.add({

  { "<leader>/", "<Plug>(comment_toggle_linewise_current)", desc = "Comment toggle current line" },
  { "<leader>;", "<cmd>Dashboard<CR>", desc = "Dashboard", hidden = true },

  -- Telescope search
  { "<leader>e", "<cmd>lua require('swenv.api').pick_venv()<cr>", desc = "Choose Env" },
  { "<leader>b", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
  { "<leader>o", "<CMD>lua require('oil').toggle_float()<CR>", desc = "Oil", hidden = true},

  -- Actions
  { "<leader>w", "<cmd>w!<CR>", desc = "Save" },
  { "<leader>c", "<cmd>confirm bd<CR>", desc = "Close Buffer" },

  -- { "<leader>b", group = "Buffers" },
  -- { "<leader>bD", "<cmd>BufferLineSortByDirectory<cr>", desc = "Sort by directory" },
  -- { "<leader>bL", "<cmd>BufferLineSortByExtension<cr>", desc = "Sort by language" },
  -- { "<leader>bW", "<cmd>noautocmd w<cr>", desc = "Save without formatting (noautocmd)" },
  -- { "<leader>bb", "<cmd>BufferLineCyclePrev<cr>", desc = "Previous" },
  -- { "<leader>be", "<cmd>BufferLinePickClose<cr>", desc = "Pick which buffer to close" },
  { "<leader>l", group = "LSP" },
  { "<leader>lI", "<cmd>Mason<cr>", desc = "Mason Info" },
  { "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols" },
  { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
  { "<leader>ld", "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", desc = "Buffer Diagnostics" },
  { "<leader>le", "<cmd>Telescope quickfix<cr>", desc = "Telescope Quickfix" },
  { "<leader>lh", "<cmd>lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<cr>", desc = "Hide Diagnostics" },
  { "<leader>li", "<cmd>LspInfo<cr>", desc = "Info" },
  { "<leader>lj", "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Next Diagnostic" },
  { "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Prev Diagnostic" },
  { "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action" },
  { "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<cr>", desc = "Quickfix" },
  { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
  { "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
  { "<leader>lw", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
  -- { "<leader>p", group = "Plugins" },
  -- { "<leader>pS", "<cmd>Lazy clear<cr>", desc = "Status" },
  -- { "<leader>pc", "<cmd>Lazy clean<cr>", desc = "Clean" },
  -- { "<leader>pd", "<cmd>Lazy debug<cr>", desc = "Debug" },
  -- { "<leader>pi", "<cmd>Lazy install<cr>", desc = "Install" },
  -- { "<leader>pl", "<cmd>Lazy log<cr>", desc = "Log" },
  -- { "<leader>pp", "<cmd>Lazy profile<cr>", desc = "Profile" },
  -- { "<leader>ps", "<cmd>Lazy sync<cr>", desc = "Sync" },
  -- { "<leader>pu", "<cmd>Lazy update<cr>", desc = "Update" },
  -- { "<leader>q", "<cmd>confirm q<CR>", desc = "Quit" },
  { "<leader>s", group = "Search"},
  { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
  { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Find highlight groups" },
  { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
  { "<leader>sR", "<cmd>Telescope registers<cr>", desc = "Registers" },
  { "<leader>sb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch" },
  { "<leader>sc", "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>", desc = "Colorscheme with Preview" },
  { "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Find File" },
  { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
  { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
  { "<leader>sl", "<cmd>Telescope resume<cr>", desc = "Resume last search" },
  { "<leader>sp", "<cmd>lua require('telescope').extensions.projects.projects()<CR>", desc = "Find Project" },
  { "<leader>sr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent File" },
  { "<leader>st", "<cmd>Telescope live_grep<cr>", desc = "Text" },
})



-- Buffers navigation
vim.keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

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
