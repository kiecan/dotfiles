local opt = vim.opt -- Shortcut for config lines
-- line numbers
opt.relativenumber = true
opt.number = true

-- Tabs ann indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.hlsearch = true
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- enable system keyboard

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-") -- Make '-' part of words
