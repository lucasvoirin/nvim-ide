local M = {
	"folke/which-key.nvim",
}

function M.config()
	local mappings = {
		[";"] = { "<cmd>Dashboard<CR>", "Dashboard" },
		["w"] = { "<cmd>w!<CR>", "Save" },
		["q"] = { "<cmd>confirm q<CR>", "Quit" },
		["/"] = { "<Plug>(comment_toggle_linewise_current)", "Comment toggle current line" },
		["c"] = { "<cmd>confirm bd<CR>", "Close Buffer" },
		["e"] = { "<cmd>Neotree toggle=true<CR>", "Explorer" },
		
		a = {
		  name = "Anaconda",
		  e = {"<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env"}
		},
		
		b = {
			name = "Buffers",
			j = { "<cmd>BufferLinePick<cr>", "Jump" },
			f = { "<cmd>Telescope buffers previewer=false<cr>", "Find" },
			b = { "<cmd>BufferLineCyclePrev<cr>", "Previous" },
			n = { "<cmd>BufferLineCycleNext<cr>", "Next" },
			W = { "<cmd>noautocmd w<cr>", "Save without formatting (noautocmd)" },
			e = { "<cmd>BufferLinePickClose<cr>", "Pick which buffer to close"},
			h = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
			l = { "<cmd>BufferLineCloseRight<cr>", "Close all to the right"},
			D = {	"<cmd>BufferLineSortByDirectory<cr>", "Sort by directory"},
			L = {	"<cmd>BufferLineSortByExtension<cr>", "Sort by language"},
		},

		p = {
			name = "Plugins",
			i = { "<cmd>Lazy install<cr>", "Install" },
			s = { "<cmd>Lazy sync<cr>", "Sync" },
			S = { "<cmd>Lazy clear<cr>", "Status" },
			c = { "<cmd>Lazy clean<cr>", "Clean" },
			u = { "<cmd>Lazy update<cr>", "Update" },
			p = { "<cmd>Lazy profile<cr>", "Profile" },
			l = { "<cmd>Lazy log<cr>", "Log" },
			d = { "<cmd>Lazy debug<cr>", "Debug" },
		},

		l = {
			name = "LSP",
			h = {"<cmd>lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<cr>", "Hide Diagnostics"},
			a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
			d = { "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>", "Buffer Diagnostics" },
			w = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
			i = { "<cmd>LspInfo<cr>", "Info" },
			I = { "<cmd>Mason<cr>", "Mason Info" },
			j = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Next Diagnostic"},
			k = {	"<cmd>lua vim.diagnostic.goto_prev()<cr>", "Prev Diagnostic"},
			l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
			q = { "<cmd>lua vim.diagnostic.setloclist()<cr>", "Quickfix" },
			r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
			s = { "<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols" },
			S = { "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", "Workspace Symbols"},
			e = { "<cmd>Telescope quickfix<cr>", "Telescope Quickfix" },
		},
		
		s = {
			name = "Search",
			b = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
			p = { "<cmd>lua require('telescope').extensions.projects.projects()<CR>", "Find Project" },
			f = { "<cmd>Telescope find_files<cr>", "Find File" },
			h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
			H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
			M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
			r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
			R = { "<cmd>Telescope registers<cr>", "Registers" },
			t = { "<cmd>Telescope live_grep<cr>", "Text" },
			k = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
			C = { "<cmd>Telescope commands<cr>", "Commands" },
			l = { "<cmd>Telescope resume<cr>", "Resume last search" },
			c = { "<cmd>lua require('telescope.builtin').colorscheme({enable_preview = true})<cr>", "Colorscheme with Preview"},
		},
		
		t = {
		  name = "Terminal",
		  f = {"<cmd>ToggleTerm direction=float name=Floating<cr>", "Open floating terminal"}
		}
		
	}

	local which_key = require("which-key")
	which_key.setup({
		plugins = {
			marks = true,
			registers = true,
			spelling = {
				enabled = true,
				suggestions = 20,
			},
			presets = {
				operators = false,
				motions = false,
				text_objects = false,
				windows = false,
				nav = false,
				z = false,
				g = false,
			},
		},
		window = {
			border = "rounded",
			position = "bottom",
			padding = { 2, 2, 2, 2 },
		},
		ignore_missing = true,
		show_help = false,
		show_keys = false,
		disable = {
			buftypes = {},
			filetypes = { "TelescopePrompt" },
		},
	})

	local opts = {
		mode = "n", -- NORMAL mode
		prefix = "<leader>",
	}

	which_key.register(mappings, opts)
end

return M
-- vim: ts=2 sts=2 sw=2 et
