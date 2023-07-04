vim.g.mapleader = " "
local wk = require("which-key")
local keymap = vim.keymap
wk.register({
	["<leader>nh"] = {
		":nohl<CR>",
		"no highlights",
	},
	["<leader>sv"] = {
		"<C-w>s",
		"create vertical splits",
	},
	["<leader>sh"] = {
		"<C-w>v",
		"create horizontal split",
	},
	["<leader>se"] = {
		"<C-w>=",
		"equal split sizes",
	},
	["<leader>sx"] = {
		":close<CR>",
		"close split",
	},
	["<leader>to"] = {
		":tabnew<CR>",
		"create new tab",
	},
	["<leader>tx"] = {
		":tabclose<CR>",
		"close tab",
	},
	["<leader>tn"] = {
		":tabn<CR>",
		"show next tab",
	},
	["<leader>tp"] = {
		":tabp<CR>",
		"show previous tab",
	},
	["<leader>sm"] = {
		":MaximizerToggle<CR>",
		"toggle maximizing tab",
	},
	["<leader>ff"] = {
		"<cmd>Telescope find_files<cr>",
		"find files",
	},
	["<leader>e"] = {
		":NvimTreeToggle<CR>",
		"Toggle file tree",
	},
	["<leader>fs"] = {
		"<cmd>Telescope live_grep<cr>",
		"find string in current directory",
	},
	["<leader>fc"] = {
		"<cmd>Telescope grep_string<cr>",
		"find string under cursor",
	},
	["<leader>fb"] = {
		"<cmd>Telescope buffers<cr>",
		"list of open buffers",
	},
	["<leader>lsrs"] = {
		":LspRestart<CR>",
		"restart lsp",
	},
	["<leader>db"] = {
		":DapToggleBreakpoint<CR>",
		"debuging breakpoint",
	},
	["<leader>ds"] = {
		":DapStepOver<CR>",
		"Next line in debuging",
	},
	["<leader>dso"] = {
		":DapStepOut<CR>",
		"quit debuging session",
	},
	["<leader>rcu"] = {
		function()
			require("crates").upgrade_all_crates()
		end,
		"update crates",
	},
})

keymap.set("n", "x", '"_x')
