vim.g.mapleader = " "

local keymap = vim.keymap

--general
keymap.set("n", "<leader>nh", ":nohl<CR>")

--windows
keymap.set("n", "<leader>sw", "<C-w>v")
keymap.set("n", "<leader>sx", ":close<CR>")
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")
--tabs
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")
--File exp
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fd", "<cmd>Telescope lsp_definitions<cr>") -- find lsp def
-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>")
--buffer
keymap.set("n", "L", "<cmd>BufferLineCycleNext<cr>")
keymap.set("n", "S", "<cmd>BufferLineCyclePrev<cr>")
keymap.set("n", "<leader>x", "<cmd>wq<cr>")
