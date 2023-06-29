vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n","<leader>nh",":nohl<CR>")

keymap.set("n","x",'"_x')

keymap.set("n","<leader>sv","<C-w>s")
keymap.set("n","<leader>sh","<C-w>v")
keymap.set("n","<leader>se","<C-w>=")
keymap.set("n","<leader>sx",":close<CR>")

keymap.set("n","<leader>to",":tabnew<CR>")
keymap.set("n","<leader>tx",":tabclose<CR>")
keymap.set("n","<leader>tn",":tabn<CR>")
keymap.set("n","<leader>tp",":tabp<CR>")

--plugins keymap
--maximizer
keymap.set("n","<leader>sm",":MaximizerToggle<CR>")

--File Explorer
keymap.set("n","<leader>e",":NvimTreeToggle<CR>")

--Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance


--lsp
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessarkeymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessaryy
