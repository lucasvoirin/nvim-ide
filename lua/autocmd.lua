-- [[ Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Custom terminals

    local Terminal  = require('toggleterm.terminal').Terminal
    
    local conda_env = require('swenv.api').get_current_venv().name
    
    local repl = Terminal:new({
    display_name = "REPL", 
    direction = "vertical",
    hidden = true })
    
    function _repl_toggle()
      repl:toggle()
    end
    
    vim.keymap.set({"n", "i", "t"}, "<c-^>", "<cmd>lua _repl_toggle()<CR>", {noremap = true, silent = true})
    
    
    local terminal = Terminal:new({
    display_name = "Terminal", 
    direction = "float" })
    
    function _terminal_toggle()
      terminal:toggle()
    end
    
    vim.keymap.set({"n", "i", "t"}, "<c-\\>", "<cmd>lua _terminal_toggle()<CR>", {noremap = true, silent = true})
