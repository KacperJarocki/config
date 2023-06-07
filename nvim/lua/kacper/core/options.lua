local opt = vim.opt

--line numbers 
opt.relativenumber = true
opt.number = true
--Tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
--line wrapping
opt.wrap = false

--search options
opt.smartcase = true
opt.ignorecase = true

--cursor
opt.cursorline = true

--apperence
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")
--split
opt.splitright = true
opt.splitbelow = true
