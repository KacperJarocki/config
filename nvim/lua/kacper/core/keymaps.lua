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
  ["<leader>rih"] = {
		function()
      require('rust-tools').inlay_hints.set()
		end,
		"Turn on hints for this buffer",
	},
  ["<leader>rmu"] = {
		function()
      require'rust-tools'.move_item.move_item(true)
		end,
		"Rust move item up",
	},
  ["<leader>rmd"] = {
		function()
      require'rust-tools'.move_item.move_item(false)
		end,
		"Rust move item down",
	},

  	["<leader>jo"] = {
		function()
      require'jdtls'.organize_imports()
		end,
		"Organize java imports",
	},
	["<leader>jev"] = {
		function()
	    require('jdtls').extract_variable()
    end,
		"extract variable",
	},
	["<leader>jec"] = {
		function()
require('jdtls').extract_constant()
		end,
		"extract constant",
	},
	["<leader>jtc"] = {
		function()
require'jdtls'.test_class()
		end,
		"Test java class",
	},
	["<leader>jtm"] = {
		function()
require'jdtls'.test_nearest_method()
		end,
		"test nearest method",
	},
})

local mappings = {

	["<leader>jev"] = {
		function()
      require('jdtls').extract_variable(true)
		end,
		"extract variable",
	},
["<leader>jec"] = {
		function()
      require('jdtls').extract_constant(true)
		end,
		"extract constant",
	},
	["<leader>jem"] = {
		function()
      require('jdtls').extract_method(true)
		end,
		"extract method",
	},
}
local opts = {
  mode = "v",
}
wk.register(mappings,opts)
keymap.set("n", "x", '"_x')
